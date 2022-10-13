<?php
declare (strict_types = 1);

namespace app\api\model\channel;

use app\api\model\ApiBaseModel;
use think\facade\Db;

/**
 * @mixin \think\Model
 */
class ChannelUser extends ApiBaseModel
{
    protected $name = "channel_user";

    // 用户消息页列表
    public function getChannelList($userInfo) {
        $list = self::with(['channel', 'oneMessage'])->where(['guid' => $userInfo['guid'], 'is_show' => 1, 'mark' => 1])->select();
        if (empty($list)) return $list;
        $list = $list->toArray();
        $result = [];
        foreach ($list as $v) {
            $channel = $v['channel'];
            $oneMessage = $v['oneMessage'];
            if (empty($channel) || empty($oneMessage)) continue;
            $item = [
                'channel_sn' => $v['channel_sn'],
                'is_owner' => $v['is_owner'],
                'unread_num' => $v['unread_num'],
                'related_sn' => $channel['related_sn'],
                'channel_type' => $channel['channel_type'],
                'channel_name' => $channel['channel_name'],
                'chat_text' => $oneMessage['content'],
                'chat_time' => $oneMessage['create_time'],
                'chat_time_str' => get_format_time(strtotime($oneMessage['create_time'])),
            ];
            $result[] = $item;
        }
        if (empty($result)) return $result;
        $lstTime = array_column($result, 'chat_time');
        array_multisort($lstTime, SORT_DESC, $result);
        return $result;
    }

    // 查看频道消息详情
    public function getChannelMessages($params, $userInfo) {
        $channel_sn = $params['channel_sn'];
        $channelInfo = self::where(['guid' => $userInfo['guid'], 'channel_sn' => $channel_sn])->find();
        if (empty($channelInfo)) base_msg('当前用户不在频道内，无法查看频道消息');
        $channelInfo = $channelInfo->toArray();
        if ($channelInfo['unread_num'] > 0){
            self::update(['unread_num' => 0], ['id' => $channelInfo['id']]);
        }
        $channelMessage = new ChannelMessage();
        $list = $channelMessage->with(['user'])->where(['channel_sn' => $channel_sn, 'mark' => 1])->order(['id' => 'desc'])->select();
        if (empty($list)) return $list;
        $result = [];
        foreach ($list as $v) {
            $result[] = [
                'guid' => $v['guid'],
                'chat_text' => $v['content'],
                'type' => $v['type'],
                'chat_time' => $v['create_time'],
                'chat_time_str' => get_format_time(strtotime($v['create_time'])),
                'nickname' => $v['user']['nickname'] ?? '',
                'avatar' => $v['user']['avatar'] ?? '',
                'gender' => $v['user']['gender'] ?? '',
            ];
        }
        return $result;
    }

    // 发送频道消息
    public function addChannelMessages($params, $userInfo) {
        $type = $params['type'] ?? 10;
        $channel_sn = $params['channel_sn'];
        $channelInfo = self::where(['guid' => $userInfo['guid'], 'channel_sn' => $channel_sn])->find();
        if (empty($channelInfo)) base_msg('当前用户不在频道内，无法查看频道消息');
        $channelMessage = new ChannelMessage();
        try {
            $channelMessage->save(['channel_sn' => $channel_sn, 'guid' => $userInfo['guid'], 'type' => $type, 'content' => $params['content']]);
            self::where(['channel_sn' => $channel_sn])->where('guid','<>', $userInfo['guid'])->inc('unread_num', 1)->update();
            return true;
        } catch (\Exception $e) {
            return false;
        }
    }

    public function channel()
    {
        return $this->hasOne(Channel::class, 'channel_sn', 'channel_sn');
    }

    public function oneMessage() {
        return $this->hasOne(ChannelMessage::class, 'channel_sn', 'channel_sn')->order(['create_time' => 'desc']);
    }

    public function messages()
    {
        return $this->hasMany(ChannelMessage::class, 'channel_sn', 'channel_sn')->order(['create_time' => 'desc']);
    }
}
