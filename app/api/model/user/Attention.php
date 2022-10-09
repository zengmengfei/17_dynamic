<?php
declare (strict_types = 1);

namespace app\api\model\user;

use app\api\model\ApiBaseModel;
use think\facade\Db;

/**
 * @mixin \think\Model
 */
class Attention extends ApiBaseModel
{
    protected $name = "user_attention";

    // 关注或取关事件
    public function changeAttention($params) {
        $wxUserinfo = new WxUserinfo();
        $wxUser = new WxUser();
        $toUserInfo = $wxUser->getUserInfoByUid($params['to_guid']);
        if (empty($toUserInfo)) return false;
        $attentionInfo = self::where(['from_guid' => $params['user_guid'], 'to_guid' => $params['to_guid']])->find();
        Db::startTrans();
        try {
            if (empty($attentionInfo)) {
                $saveData = [
                    'from_guid' => $params['user_guid'],
                    'to_guid' => $params['to_guid'],
                ];
                self::save($saveData);
                $wxUserinfo::where('user_guid', $params['to_guid'])->inc('fans_num', 1)->update();
            } else {
                $status = ($attentionInfo['status'] == 10)?20:10;
                $attentionInfo::update(['status' => $status], ['id' => $attentionInfo['id']]);
                if ($status == 10) {
                    $wxUserinfo::where('user_guid', $params['to_guid'])->inc('fans_num', 1)->update();
                } else {
                    $wxUserinfo::where('user_guid', $params['to_guid'])->dec('fans_num', 1)->update();
                }
            }
            Db::commit();
            return true;
        } catch (\Exception $e) {
            Db::rollback();
            return false;
        }
    }


    // 获取关注人的guids
    public function getAttentionGuids($user_guid) {
        return self::where(['from_guid' => $user_guid, 'status' => 10])->column('to_guid');
    }


}
