<?php
declare (strict_types=1);

namespace app\api\model\venue;

use app\api\model\ApiBaseModel;
use think\facade\Db;

/**
 * @mixin \think\Model
 */
class VenueReserve extends ApiBaseModel
{
    protected $name = "venue_reserve";


    // 场馆预定
    public function addVenueReserve($param)
    {
        $venue_sn = $param['venue_sn'];
        $venueModel = new Venue();
        $venueInfo = $venueModel->getVenueInfo($venue_sn);
        if (empty($venueInfo)) base_msg('场馆信息不存在', 400);
        if (empty($param['re_time'][0]) || empty($param['re_time'][1])) base_msg('请正确选择预定时间');
        $time_str = implode('-', $param['re_time']);
        if ($venueModel->checkPeriod($venue_sn, $param['re_date'], $time_str)) base_msg('该场馆场次已被预定');
        $venueTimeDetail = $venueModel->getVenueTimeDetail($venue_sn, $param['re_date'], $time_str);
        $starttime = $param['re_date'] . ' ' . $param['re_time'][0] . ':00';
        $endtime = $param['re_date'] . ' ' . $param['re_time'][1] . ':00';
        $data = [
            'guid' => $param['guid'],
            'venue_sn' => $venue_sn,
            'venue_name' => $venueInfo['venue_name'],
            're_address' => $venueInfo['venue_address'],
            'longitude' => $venueInfo['longitude'],
            'latitude' => $venueInfo['latitude'],
            're_date' => $param['re_date'],
            're_starttime' => $starttime,
            're_endtime' => $endtime,
            'venue_cost' => $venueTimeDetail['venue_cost'],
            'venue_actual_cost' => $venueTimeDetail['venue_actual_cost'],
            're_status' => 20, // 默认为预定成功, 实际上是预定中，待付款成功后才更新为预定成功，待开发
        ];
        return self::save($data);
    }

}
