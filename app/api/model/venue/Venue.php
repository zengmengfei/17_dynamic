<?php
declare (strict_types = 1);

namespace app\api\model\venue;

use app\api\model\ApiBaseModel;
use think\facade\Db;

/**
 * @mixin \think\Model
 */
class Venue extends ApiBaseModel
{
    protected $name = "venue";


    // 添加场馆
    public function addVenue($param, $userInfo) {
        if (empty($userInfo['is_venue_manager']) && $userInfo['is_venue_manager'] != 1) {
            base_msg('非场馆管理员不可添加场馆');exit;
        }
        $venue_sn = get_time_rand_code('cg');
        $saveData = [
            'guid' => $param['guid'],
            'venue_sn' => $venue_sn,
            'venue_name' => $param['venue_name'],
            'venue_address' => $param['venue_address'],
            'business_hours' => $param['business_hours'],
            'principal_telephone' => $param['principal_telephone'],
            'imgs' => $param['imgs'],
            'longitude' => $param['longitude'],
            'latitude' => $param['latitude'],
            'province' => $param['province'],
            'city' => $param['city'],
            'district' => $param['district'],
        ];
        return self::save($saveData);
    }

    // 场馆列表
    public function userVenueList($param) {
        return self::where(['guid' => $param['guid'], 'mark' => 1])->order(['create_time' => 'desc'])->select();
    }

    // 删除场馆
    public function delVenue($param, $userInfo) {
        if (empty($userInfo['is_venue_manager']) && $userInfo['is_venue_manager'] != 1) {
            base_msg('非场馆管理员不可删除场馆');exit;
        }
        $info = self::where(['venue_sn' => $param['venue_sn'], 'guid' => $param['guid'], 'mark' => 1])->find();
        if (empty($info)) {
            base_msg('场馆信息不存在，删除失败');exit;
        }
        return self::where(['venue_sn' => $param['venue_sn']])->save(['mark' => 0]);
    }

    // 场馆详情
    public function getVenueInfo($venue_sn) {
        $info = self::where(['venue_sn' => $venue_sn])->find();
        return !empty($info)?$info->toArray():[];
    }

    //获取场馆某一个时间段的详情
    public function getVenueTimeDetail($venue_sn) {
        return ['venue_cost' => 500, 'venue_actual_cost' => 350]; // 测试数据
    }

    public function getImgsAttr($value)
    {
        return $value?explode(',', $value):'';
    }

    public function setImgsAttr($value)
    {
        return ($value && is_array($value))?implode(',',$value):$value;
    }



}
