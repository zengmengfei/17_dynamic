<?php
declare (strict_types = 1);

namespace app\api\model\venue;

use app\api\model\ApiBaseModel;
use think\facade\Db;

/**
 * @mixin \think\Model
 */
class VenueCover extends ApiBaseModel
{
    protected $name = "venue_cover";


    public function getDetailsAttr($value)
    {
        return $value?unserialize($value):'';
    }

    public function setDetailsAttr($value)
    {
        return ($value && is_array($value))?serialize($value):$value;
    }


    //获取场馆更新场次信息
    public function getVenueCoverData($venue_sn) {
        $list = self::where(['venue_sn' => $venue_sn, 'mark' => 1])->select();
        $newData = [];
        if (!empty($list)) {
            $list = $list->toArray();
            foreach ($list as $item) {
                $newData[$item['date']] = $item['details'];
            }
        }
        return $newData;
    }

}
