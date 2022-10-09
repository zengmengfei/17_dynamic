<?php
declare (strict_types = 1);

namespace app\api\model\user;

use app\api\model\ApiBaseModel;
use think\facade\Db;

/**
 * @mixin \think\Model
 */
class DynamicThumb extends ApiBaseModel
{
    protected $name = "user_dynamic_thumb";

    // 点赞或者取消点赞事件操作
    public function changeThumbs($user_guid, $dynamic_sn) {
        $dynamicModel = new Dynamic();
        $dynamicInfo = $dynamicModel->getDynamicInfoBySn($dynamic_sn);
        if (empty($dynamicInfo)) return false;
        $thumbInfo = $this->getDynamicThumb($user_guid, $dynamic_sn);
        Db::startTrans();
        try {
            if (empty($thumbInfo)) {
                $thumbSave = [
                  'user_guid' => $user_guid,
                  'dynamic_sn' => $dynamic_sn,
                  'uu_guid' => $dynamicInfo['user_guid'],
                ];
                self::save($thumbSave);
                $dynamicInfo::where('dynamic_sn', $dynamic_sn)->inc('thumb_num', 1)->update();
            } else {
                $status = ($thumbInfo['status'] == 10)?20:10;
                $thumbInfo::update(['status' => $status], ['user_guid' => $user_guid]);
                if ($status == 10) {
                    $dynamicInfo::where('dynamic_sn', $dynamic_sn)->inc('thumb_num', 1)->update();
                } else {
                    $dynamicInfo::where('dynamic_sn', $dynamic_sn)->dec('thumb_num', 1)->update();
                }
            }
            Db::commit();
            return true;
        } catch (\Exception $e) {
            Db::rollback();
            return false;
        }
    }

    // 通过Sn获取动态详情
    public function getDynamicThumb($user_guid, $dynamic_sn) {
        $map = ['user_guid' => $user_guid, 'dynamic_sn' => $dynamic_sn];
        return self::where($map)->find();
    }
}
