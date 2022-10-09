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
    public function changeThumbs($guid, $dynamic_sn) {
        $dynamicModel = new Dynamic();
        $dynamicInfo = $dynamicModel->getDynamicInfoBySn($dynamic_sn);
        if (empty($dynamicInfo)) return false;
        $thumbInfo = $this->getDynamicThumb($guid, $dynamic_sn);
        Db::startTrans();
        try {
            if (empty($thumbInfo)) {
                $thumbSave = [
                  'guid' => $guid,
                  'dynamic_sn' => $dynamic_sn,
                  'uu_guid' => $dynamicInfo['guid'],
                ];
                self::save($thumbSave);
                $dynamicInfo::where('dynamic_sn', $dynamic_sn)->inc('thumb_num', 1)->update();
            } else {
                $status = ($thumbInfo['status'] == 10)?20:10;
                $thumbInfo::update(['status' => $status], ['guid' => $guid]);
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
    public function getDynamicThumb($guid, $dynamic_sn) {
        $map = ['guid' => $guid, 'dynamic_sn' => $dynamic_sn];
        return self::where($map)->find();
    }
}
