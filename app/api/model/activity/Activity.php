<?php
declare (strict_types = 1);

namespace app\api\model\activity;

use app\api\model\ApiBaseModel;
use app\api\model\venue\Venue;
use think\facade\Db;

/**
 * @mixin \think\Model
 */
class Activity extends ApiBaseModel
{
    protected $name = "activity";

    const CADTARR = [
      10 => '活动前2小时',
//      20 => '活动前6小时',
//      30 => '活动前1天',
    ];


    // 添加标签
    public function addActivity($param, $userInfo) {
        if (empty($userInfo['is_certification']) && $userInfo['is_certification'] != 1) {
            base_msg('未进行实名认证不可添加活动', 400);
        }
        $venue_sn = $param['venue_sn'];
        $venueModel = new Venue();
        $venueInfo = $venueModel->getVenueInfo($venue_sn);
        if (empty($venueInfo)) {
            base_msg('场馆信息不存在', 400);
        }
        if (empty($param['activity_time'][0]) || empty($param['activity_time'][1])) {
            base_msg('请正确选择活动时间', 400);
        }
        $cancel_apply_deadline_type = $param['cancel_apply_deadline_type'] ?? 0;
        if (!isset(self::CADTARR[$cancel_apply_deadline_type])) {
            base_msg('请选择取消报名截止时间', 400);
        }
        $activity_sn = get_time_rand_code('hd');
        $team_type = $param['team_type'] ?? 10;
        $total_num = $param['total_num'];
        $saveData = [
            'guid' => $param['guid'],
            'activity_sn' => $activity_sn,
            'activity_type' => $param['activity_type'] ?? 10,
            'venue_sn' => $venue_sn,
            'venue_name' => $venueInfo['venue_name'],
            'activity_address' => $venueInfo['venue_address'],
            'longitude' => $venueInfo['longitude'],
            'latitude' => $venueInfo['latitude'],
            'province' => $venueInfo['province'],
            'city' => $venueInfo['city'],
            'district' => $venueInfo['district'],
            'cover_imgs' => $param['cover_imgs'],
            'title' => $param['title'],
            'activity_date' => $param['activity_date'],
            'description' => $param['description'],
            'tags' => $param['tags'],
            'organizer_type' => $param['organizer_type'] ?? 10,
            'contact_name' => $param['contact_name'],
            'contact_mobile' => $param['contact_mobile'],
            'contact_wxid' => $param['contact_wxid'] ?? '',
            'team_type' => $team_type,
            'total_num' => $total_num,
            'entry_fee' => $param['entry_fee'],
            'cancel_apply_deadline_type' => $cancel_apply_deadline_type,
        ];
        $saveData['activity_starttime'] = $param['activity_date'].' '.$param['activity_time'][0].':00';
        $saveData['activity_endtime'] = $param['activity_date'].' '.$param['activity_time'][1].':00';
        if ($cancel_apply_deadline_type == 10) {
            $saveData['cancel_apply_deadline_time'] = date('Y-m-d H:i:s', strtotime($saveData['activity_starttime']) - 2 * 3600);
        }
        if (!empty($param['male_level'][0])) $saveData['male_min_level'] = $param['male_level'][0];
        if (!empty($param['male_level'][1])) $saveData['male_max_level'] = $param['male_level'][1];
        if (!empty($param['female_level'][0])) $saveData['female_min_level'] = $param['female_level'][0];
        if (!empty($param['female_level'][1])) $saveData['female_max_level'] = $param['female_level'][1];
        if ($team_type == 10) {
            if ($total_num < 2 || $total_num % 2) {
                base_msg('线上分队报名人数不可小于2人且不可为单数', 400);
            }
            $saveData['team_one_num'] = $saveData['team_two_num'] = $total_num / 2;
        }
        $venueTimeDetail = $venueModel->getVenueTimeDetail($venue_sn);
        $saveData['venue_cost'] = $venueTimeDetail['venue_cost'];
        $saveData['venue_actual_cost'] = $venueTimeDetail['venue_actual_cost'];
        return self::save($saveData);
    }

    // 活动列表
    public function getActivityList() {
        $order = ['create_time' => 'desc'];
        $list = self::with(['applys' => function ($query) {
            $query->with(['user', 'userInfo']);
        }])->order($order)->select()->toArray();
        if (empty($list)) {
            foreach ($list as &$v) {
                $v = $this->checkActivityDetail($v);
            }
        }
        return $list;
    }

    public function getActivityDetail($activity_sn) {
        $detail = self::with(['applys' => function ($query) {
            $query->with(['user', 'userInfo']);
        }])->where(['activity_sn' => $activity_sn])->find()->toArray();
        return $this->checkActivityDetail($detail);
    }

    // 活动详情数据组装
    public function checkActivityDetail($detail) {
        if (empty($detail)) return $detail;
        $male_num = $female_num = 0;
        $team_list = $team_one_list = $team_two_list = [];
        $applys = $detail['applys'];
        unset($detail['applys']);
        if (!empty($applys)) {
            foreach ($applys as $sv) {
                if ($sv['gender'] == 1) {
                    ++$male_num;
                } else {
                    ++$female_num;
                }
                $temp = ['nickname' => $sv['nickname'], 'gender' => $sv['gender'], 'avatar' => $sv['user']['avatar'], 'constellation' => $sv['userInfo']['constellation']];
                if ($sv['team_no'] == 1){
                    $team_one_list[] = $temp;
                } elseif ($sv['team_no'] == 2) {
                    $team_two_list[] = $temp;
                } else {
                    $team_list[] = $temp;
                }
            }
        }
        $detail['male_num'] = $male_num;
        $detail['female_num'] = $female_num;
        $detail['team_list'] = $team_list;
        $detail['team_one_list'] = $team_one_list;
        $detail['team_two_list'] = $team_two_list;
        return $detail;
    }

    // 获取活动信息
    public function getActivityInfo($activity_sn) {
        return self::where(['activity_sn' => $activity_sn, 'mark' => 1])->find()->toArray();
    }

    public function getCoverImgsAttr($value)
    {
        return $value?explode(',', $value):'';
    }

    public function setCoverImgsAttr($value)
    {
        return ($value && is_array($value))?implode(',',$value):$value;
    }

    public function applys() {
        return $this->hasMany(Apply::class, 'activity_sn', 'activity_sn')->where(['status' => 20, 'mark' => 1]);
    }

}
