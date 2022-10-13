<?php
declare (strict_types = 1);

namespace app\api\model\venue;

use app\api\model\activity\Activity;
use app\api\model\ApiBaseModel;
use think\facade\Db;

/**
 * @mixin \think\Model
 */
class Venue extends ApiBaseModel
{
    protected $name = "venue";

    const VENUE_SETTING = [
        0 => [
            ['time_str' => '08:00-10:00', 'price' => 200], ['time_str' => '10:00-12:00', 'price' => 320], ['time_str' => '12:00-14:00', 'price' => 380], ['time_str' => '14:00-16:00', 'price' => 400],
            ['time_str' => '16:00-18:00', 'price' => 400], ['time_str' => '18:00-20:00', 'price' => 400], ['time_str' => '20:00-22:00', 'price' => 400]
        ],
        1 => [
            ['time_str' => '08:00-10:00', 'price' => 320], ['time_str' => '10:00-12:00', 'price' => 320], ['time_str' => '12:00-14:00', 'price' => 380], ['time_str' => '14:00-16:00', 'price' => 400],
            ['time_str' => '16:00-18:00', 'price' => 400], ['time_str' => '18:00-20:00', 'price' => 400], ['time_str' => '20:00-22:00', 'price' => 400]
        ],
        2 => [
            ['time_str' => '08:00-10:00', 'price' => 320], ['time_str' => '10:00-12:00', 'price' => 320], ['time_str' => '12:00-14:00', 'price' => 380], ['time_str' => '14:00-16:00', 'price' => 400],
            ['time_str' => '16:00-18:00', 'price' => 400], ['time_str' => '18:00-20:00', 'price' => 400], ['time_str' => '20:00-22:00', 'price' => 400]
        ],
        3 => [
            ['time_str' => '08:00-10:00', 'price' => 320], ['time_str' => '10:00-12:00', 'price' => 320], ['time_str' => '12:00-14:00', 'price' => 380], ['time_str' => '14:00-16:00', 'price' => 400],
            ['time_str' => '16:00-18:00', 'price' => 400], ['time_str' => '18:00-20:00', 'price' => 400], ['time_str' => '20:00-22:00', 'price' => 400]
        ],
        4 => [
            ['time_str' => '08:00-10:00', 'price' => 200], ['time_str' => '10:00-12:00', 'price' => 320], ['time_str' => '12:00-14:00', 'price' => 380], ['time_str' => '14:00-16:00', 'price' => 400],
            ['time_str' => '16:00-18:00', 'price' => 400], ['time_str' => '18:00-20:00', 'price' => 400], ['time_str' => '20:00-22:00', 'price' => 400]
        ],
        5 => [
            ['time_str' => '08:00-10:00', 'price' => 320], ['time_str' => '10:00-12:00', 'price' => 320], ['time_str' => '12:00-14:00', 'price' => 380], ['time_str' => '14:00-16:00', 'price' => 400],
            ['time_str' => '16:00-18:00', 'price' => 400], ['time_str' => '18:00-20:00', 'price' => 400], ['time_str' => '20:00-22:00', 'price' => 400]
        ],
        6 => [
            ['time_str' => '08:00-10:00', 'price' => 320], ['time_str' => '10:00-12:00', 'price' => 320], ['time_str' => '12:00-14:00', 'price' => 380], ['time_str' => '14:00-16:00', 'price' => 400],
            ['time_str' => '16:00-18:00', 'price' => 400], ['time_str' => '18:00-20:00', 'price' => 400], ['time_str' => '20:00-22:00', 'price' => 400]
        ],
    ];


    // 添加场馆
    public function addVenue($params, $userInfo) {
        if (empty($userInfo['is_venue_manager']) && $userInfo['is_venue_manager'] != 1) {
            base_msg('非场馆管理员不可添加场馆');exit;
        }
        $venue_sn = get_time_rand_code('CG');
        $saveData = [
            'guid' => $params['guid'],
            'venue_sn' => $venue_sn,
            'venue_name' => $params['venue_name'],
            'venue_address' => $params['venue_address'],
            'business_hours' => $params['business_hours'],
            'principal_telephone' => $params['principal_telephone'],
            'imgs' => $params['imgs'],
            'longitude' => $params['longitude'],
            'latitude' => $params['latitude'],
            'province' => $params['province'],
            'city' => $params['city'],
            'district' => $params['district'],
        ];
        return self::save($saveData);
    }

    // 场馆列表
    public function userVenueList($params) {
        return self::where(['guid' => $params['guid'], 'mark' => 1])->order(['create_time' => 'desc'])->select();
    }

    // 删除场馆
    public function delVenue($params, $userInfo) {
        if (empty($userInfo['is_venue_manager']) && $userInfo['is_venue_manager'] != 1) {
            base_msg('非场馆管理员不可删除场馆');exit;
        }
        $info = self::where(['venue_sn' => $params['venue_sn'], 'guid' => $params['guid'], 'mark' => 1])->find();
        if (empty($info)) {
            base_msg('场馆信息不存在，删除失败');exit;
        }
        return self::where(['venue_sn' => $params['venue_sn']])->save(['mark' => 0]);
    }

    // 场馆详情
    public function getVenueInfo($venue_sn) {
        $info = self::where(['venue_sn' => $venue_sn])->find();
        return !empty($info)?$info->toArray():[];
    }

    // 获取场馆场次信息
    public function venuePeriodInfo($params) {
        $start_date = date('Y-m-d');
        $end_date = date('Y-m-d', strtotime('+1 month', strtotime($start_date)));
        $dates = get_pr_dates($start_date, $end_date);
        if (empty($dates)) return false;
        $activityModel = new Activity();
        $data = [];
        foreach ($dates as $date) {
            $w = date('w', strtotime($date));
            $period = self::VENUE_SETTING[$w];
            if (empty($period)) continue;
            $min_price = $period[0]['price'];
            foreach ($period as $k => $v) {
                $min_price = ($min_price > $v['price'])?$v['price']:$min_price;
                $period[$k]['is_period'] = $this->checkPeriod($activityModel, $params['venue_sn'], $date, $v['time_str'])?1:0;
            }
            $item = [
                'min_price' => $min_price,
                'date_str' => date('m月d日', strtotime($date)),
                'week_name' => get_week_name($date),
                'period' => $period,
            ];
            $data[] = $item;
        }
        return $data;
    }

    // 验证场次是否被预定
    public function checkPeriod($model, $venue_sn, $date, $time_str) {
        if (empty($venue_sn) || empty($date) || empty($time_str)) return false;
        list($start, $end) = explode('-', $time_str);
        $starttime = $date.' '.$start.':00';
        $endtime = $date.' '.$end.':00';
        $count = $model->where(['venue_sn' => $venue_sn, 'activity_starttime' => $starttime, 'activity_endtime' => $endtime,'status' => 10, 'mark' => 1])->count();
        return ($count && $count > 0)?true:false;
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
