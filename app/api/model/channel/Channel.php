<?php
declare (strict_types = 1);

namespace app\api\model\channel;

use app\api\model\ApiBaseModel;
use think\facade\Db;

/**
 * @mixin \think\Model
 */
class Channel extends ApiBaseModel
{
    protected $name = "channel";
    const CHANNEL_TYPE_ARR = [
      10 => ['name' => '个人聊天', 'prefix' => 'gr'],
      20 => ['name' => '活动群聊', 'prefix' => 'hd'],
      30 => ['name' => '俱乐部群聊', 'prefix' => 'cb'],
    ];

    // 创建频道
    public function createChannel($params) {
        $guid = $params['guid'];
        if (empty($guid)) base_msg('用户guid不存在', 400);
        $channel_type = $params['channel_type'];
        if (!isset(self::CHANNEL_TYPE_ARR[$channel_type])) {
            base_msg('消息频道类型不存在', 400);
        }
        $channel_sn = get_time_rand_code(self::CHANNEL_TYPE_ARR[$channel_type]['prefix']);
        $channelData = [
            'channel_sn' => $channel_sn,
            'guid' => $guid,
            'channel_name' => $params['channel_name'] ?? '',
            'channel_type' => $channel_type,
            'related_sn' => $params['related_sn'] ?? '',
        ];
        Db::startTrans();
        try {
            self::save($channelData);
            $channelUser = new ChannelUser();
            $channelUser->save(['channel_sn' => $channel_sn, 'guid' => $guid, 'is_owner' => 1]);
            // 问候语不为空时
            if (!empty($params['greetings'])) {
                $channelMessage = new ChannelMessage();
                $channelMessage->save(['channel_sn' => $channel_sn, 'guid' => $guid, 'content' => $params['greetings']]);
            }
            Db::commit();
            return true;
        } catch (\Exception $e) {
            // 回滚事务
            Db::rollback();
            return false;
        }
    }

    // 用户加入活动群聊
    public function joinChannel($params) {
        $guid = $params['guid'];
        $related_sn = $params['related_sn'];
        if (empty($guid) || empty($related_sn)) base_msg('数据不完整，无法加入群聊', 400);
        $channelInfo = self::where(['related_sn' => $related_sn, 'mark' => 1])->find();
        if (empty($channelInfo)) base_msg('群聊不存在，加入失败', 400);
        $channel_sn = $channelInfo->channel_sn;
        $channelUser = new ChannelUser();
        $channelUserInfo = $channelUser->where(['guid' => $guid, 'channel_sn' => $channel_sn])->find();
        Db::startTrans();
        try {
            if (empty($channelUserInfo)) {
                $channelUser->save(['channel_sn' => $channel_sn, 'guid' => $guid]);
            } else {
                $channelUser->update(['mark' => 1, 'is_show' => 1], ['guid' => $guid, 'channel_sn' => $channel_sn]);
            }
            // 问候语不为空时
            if (!empty($params['greetings'])) {
                $channelMessage = new ChannelMessage();
                $channelMessage->save(['channel_sn' => $channel_sn, 'guid' => $guid, 'content' => $params['greetings']]);
                $channelUser->where(['channel_sn' => $channel_sn])->where('guid','<>', $guid)->inc('unread_num', 1)->update();
            }
            Db::commit();
            return true;
        } catch (\Exception $e) {
            // 回滚事务
            Db::rollback();
            return false;
        }
    }
}
