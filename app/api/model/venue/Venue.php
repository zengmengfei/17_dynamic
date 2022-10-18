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
    public function saveVenue($params, $userInfo) {
        if (empty($userInfo['is_venue_manager']) && $userInfo['is_venue_manager'] != 1) {
            base_msg('非场馆管理员不可添加场馆');
        }
        $guid = $params['guid'];
        $saveData = [
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
        $venue_sn = $params['venue_sn'] ?? '';
        $details = $params['details'] ?? [];
        $coverData = [];
        if (!empty($details)) {
            // 如果存在场馆修改时间金额信息
            foreach ($details as $item) {
                if (empty($item['detail'])) continue;
                $coverData[] = ['date' => $item['date'], 'details' => $item['detail']];
            }
        }
        $venueCoverModel = new VenueCover();
        Db::startTrans();
        try {
            if (!empty($venue_sn)) {
                $venueInfo = self::where(['venue_sn' => $venue_sn, 'guid' => $guid, 'mark' => 1])->find();
                if (empty($venueInfo)) return false;
                $venueInfo = $venueInfo->toArray();
                self::update($saveData, ['id' => $venueInfo['id']]);
                if (!empty($coverData)) {
                    foreach ($coverData as $cd) {
                        $cdInfo = $venueCoverModel->where(['venue_sn' => $venue_sn, 'date' => $cd['date'], 'mark' => 1])->find();
                        if (empty($cdInfo)) {
                            $venueCoverModel->save(['guid' => $guid, 'venue_sn' => $venue_sn, 'date' => $cd['date'], 'details' => $cd['details']]);
                        } else {
                            $venueCoverModel->update(['details' => $cd['details'], 'update_time' => time()], ['venue_sn' => $venue_sn, 'mark' => 1]);
                        }
                    }
                }
            } else {
                $venue_sn = get_time_rand_code('CG');
                $saveData['venue_sn'] = $venue_sn;
                $saveData['guid'] = $guid;
                self::save($saveData);
                if (!empty($coverData)) {
                    $coverData = [];
                    foreach ($coverData as $cd) {
                        $coverData[] = ['guid' => $guid, 'venue_sn' => $venue_sn, 'date' => $cd['date'], 'details' => $cd['details']];
                    }
                    $venueCoverModel->saveAll($coverData);
                }
            }
            Db::commit();
            return true;
        } catch (\Exception $e) {
            // 回滚事务
            Db::rollback();
            return false;
        }
    }

    // 场馆列表
    public function userVenueList($params) {
        $list = self::where(['guid' => $params['guid'], 'mark' => 1])->order(['create_time' => 'desc'])->select();
        if (empty($list)) return $list;
        $list = $list->toArray();
        foreach ($list as &$v) {
            if (!empty($params['longitude']) && !empty($params['latitude']) && !empty($v['longitude']) && !empty($v['latitude'])) {
                $v['distance'] = get_distance($params['longitude'], $params['latitude'], $v['longitude'], $v['latitude']);
            } else {
                $v['distance'] = '';
            }
        }
        return $list;
    }

    // 删除场馆
    public function delVenue($params, $userInfo) {
        if (empty($userInfo['is_venue_manager']) && $userInfo['is_venue_manager'] != 1) {
            base_msg('非场馆管理员不可删除场馆');
        }
        $info = self::where(['venue_sn' => $params['venue_sn'], 'guid' => $params['guid'], 'mark' => 1])->find();
        if (empty($info)) {
            base_msg('场馆信息不存在，删除失败');
        }
        return self::where(['venue_sn' => $params['venue_sn']])->save(['mark' => 0]);
    }

    // 场馆详情
    public function getVenueInfo($venue_sn) {
        $info = self::where(['venue_sn' => $venue_sn])->find();
        return !empty($info)?$info->toArray():[];
    }

    // 获取场馆场次信息
    public function venuePeriodDetail($params) {
        $venue_sn = $params['venue_sn'];
        $venue_info = self::where(['venue_sn' => $venue_sn, 'mark' => 1])->find();
        if (empty($venue_info)) base_msg('场馆信息不存在');
        $start_date = date('Y-m-d');
        $end_date = date('Y-m-d', strtotime('+1 month', strtotime($start_date)));
        $dates = get_pr_dates($start_date, $end_date);
        if (empty($dates)) return false;
        $venueCoverModel = new VenueCover();
        $data = [];
        $coverData = $venueCoverModel->getVenueCoverData($venue_sn);
        foreach ($dates as $date) {
            if (isset($coverData[$date])) {
                $period = $coverData[$date];
            } else {
                $w = date('w', strtotime($date));
                $period = self::VENUE_SETTING[$w];
            }
            if (empty($period)) continue;
            $min_price = $period[0]['price'];
            foreach ($period as $k => $v) {
                $min_price = ($min_price > $v['price'])?$v['price']:$min_price;
                $period[$k]['is_period'] = $this->checkPeriod($venue_sn, $date, $v['time_str'])?1:0;
            }
            $item = [
                'min_price' => $min_price,
                'date_str' => date('m月d日', strtotime($date)),
                'week_name' => get_week_name($date),
                'period' => $period,
            ];
            $data[] = $item;
        }
        $venue_info['details'] = $data;
        return $venue_info;
    }

    // 验证场次是否被预定
    public function checkPeriod($venue_sn, $date, $time_str) {
        if (empty($venue_sn) || empty($date) || empty($time_str)) return false;
        $activityModel = new Activity();
        $reserveModel = new VenueReserve();
        list($start, $end) = explode('-', $time_str);
        $starttime = $date.' '.$start.':00';
        $endtime = $date.' '.$end.':00';
        $count1 = $activityModel->where(['venue_sn' => $venue_sn, 'activity_date' => $date, 'activity_starttime' => $starttime, 'activity_endtime' => $endtime,'status' => 10, 'mark' => 1])->count();
        $count2 = $reserveModel->where(['venue_sn' => $venue_sn, 're_date' => $date, 're_starttime' => $starttime, 're_endtime' => $endtime, 're_status' => 20, 'mark' => 1])->count();
        return ($count1 > 0 || $count2 > 0)?true:false;
    }

    public function getRandomList($randNum = 2) {
        $list = self::where(['mark' => 1])->limit($randNum)->orderRaw("rand() , id DESC")->select();
        if (empty($list)) return $list;
        $list = $list->toArray();
        return $list;
    }

    public function getVenueList($params) {
        $map = [['mark', '=', 1]];
        $order = ['create_time' => 'desc'];
        if (!empty($params['citys']) && is_array($params['citys'])) {
            $map[] = ['city', 'in', $params['citys']];
        }
        if (!empty($params['districts']) && is_array($params['districts'])) {
            $map[] = ['district', 'in', $params['districts']];
        }
        if (!empty($params['title']) && !empty(trim($params['title']))) {
            $map[] = ['venue_name', 'like', '%'.trim($params['title']).'%'];
        }
        $query = self::where($map);
        if (!empty($params['is_distance']) && $params['is_distance'] == 1 && !empty($params['longitude']) && !empty($params['latitude'])) {
            // 距离我最近排序
            $query = $query->fieldRaw("*,".$this->get_distance_sql($params['longitude'], $params['latitude'], 'distance_field'));
            $order['distance_field'] = 'asc';
        }
        if (!empty($params['is_price']) && $params['is_price'] == 1) {
            $order['lowest_price'] = 'asc';
        }
        $list = $query->order($order)->select();
        if (empty($list)) return $list;
        $list = $list->toArray();
        foreach ($list as &$v) {
            if (!empty($params['longitude']) && !empty($params['latitude']) && !empty($v['longitude']) && !empty($v['latitude'])) {
                $v['distance'] = get_distance($params['longitude'], $params['latitude'], $v['longitude'], $v['latitude']);
            } else {
                $v['distance'] = '';
            }
        }
        return $list;
    }

    // 经纬度排序sql组装
    public function get_distance_sql($lat, $lng, $as_name = 'distance_field')
    {
        return sprintf('round(6371*sqrt( pow((PI()*(abs(`longitude`-%f))/180) * cos(PI()*(`longitude`+%f)/360),2) + pow((PI()*abs(`longitude`-%f)/180),2)),4) as %s', $lat, $lat, $lng, $as_name);
    }

    //获取场馆某一个时间段的详情
    public function getVenueTimeDetail($venue_sn, $date, $time_str) {
        $vcModel = new VenueCover();
        $vcData = $vcModel->vcDataByDate($venue_sn, $date);
        $vtDetail = [];
        if (!empty($vcData['details'])) {
            $period = $vcData['details'];
        } else {
            $w = date('w', strtotime($date));
            $period = self::VENUE_SETTING[$w];
        }
        if (!empty($period)) {
            foreach ($period as $detail) {
                if ($detail['time_str'] == $time_str) {
                    $vtDetail = ['venue_cost' => $detail['price'], 'venue_actual_cost' => $detail['price']];
                    break;
                }
            }
        }
        if (empty($vtDetail)) base_msg('该场馆时间段价格未设置');
        return $vtDetail;
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
