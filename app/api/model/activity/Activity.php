<?php
declare (strict_types = 1);

namespace app\api\model\activity;

use app\api\model\ApiBaseModel;
use app\api\model\channel\Channel;
use app\api\model\user\WxUser;
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
    const ACTIVITY_TYPE_ARR = [
      10 => '运动健身', 20 => '户外出行', 30 => '单身交友', 40 => '生活学习'
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

        Db::startTrans();
        try {
            self::save($saveData);
            // 添加消息频道
            $channel_name = date('m.d', strtotime($param['activity_date'])).get_week_name(strtotime($param['activity_date'])).(self::ACTIVITY_TYPE_ARR[$param['activity_type']] ?? '').'局';
            $channel_data = ['guid' => $param['guid'], 'related_sn' => $activity_sn, 'channel_type' => 20, 'channel_name' => $channel_name, 'greetings' => '这里是'.$channel_name.'群，待新的小伙伴加入群聊'];
            $channel = new Channel();
            if (!$channel->createChannel($channel_data)) {
                Db::rollback();
                return false;
            };
            Db::commit();
            return true;
        } catch (\Exception $e) {
            // 回滚事务
            Db::rollback();
            return false;
        }
    }

    // 活动列表
    public function getActivityList($param) {
        $map = $order = [];
        if (!empty($param['activity_type'])) {
            $map[] = ['activity_type', '=', $param['activity_type']];
        }
        if (!empty($param['activity_date'])) {
            $map[] = ['activity_date', '=', $param['activity_date']];
        }
        if (!empty($param['tags']) && is_array($param['tags'])) {
            $tags = [];
            foreach ($param['tags'] as $tag) {
                $tags[] = '%'.$tag.'%';
            }
            $map[] = ['tags', 'like', $tags, 'or'];
        }
        if (!empty($param['citys']) && is_array($param['citys'])) {
            $map[] = ['city', 'in', $param['citys']];
        }
        if (!empty($param['districts']) && is_array($param['districts'])) {
            $map[] = ['district', 'in', $param['districts']];
        }
        $query = self::with(['user', 'applys' => function ($query) {
            $query->with(['user', 'userInfo']);
        }]);

        if (!empty($map)) {
            $query = $query->where($map);
        }
        if (!empty($param['is_distance']) && $param['is_distance'] == 1 && !empty($param['longitude']) && !empty($param['latitude'])) {
            // 距离我最近排序
            $query = $query->fieldRaw("*,".$this->get_distance_sql($param['longitude'], $param['latitude'], 'distance_field'));
            $order['distance_field'] = 'asc';
        }
        if (!empty($param['is_last_time']) && $param['is_last_time'] == 1) {
            // 时间离我最近排序
            $order['activity_starttime'] = 'asc';
        }
        $order['create_time'] = 'desc';
        $list = $query->order($order)->select();
        if (!empty($list)) {
            $list = $list->toArray();
            foreach ($list as &$v) {
                $v = $this->checkActivityDetail($v);
                if (!empty($param['longitude']) && !empty($param['latitude']) && !empty($v['longitude']) && !empty($v['latitude'])) {
                    $v['distance'] = get_distance($param['longitude'], $param['latitude'], $v['longitude'], $v['latitude']);
                } else {
                    $v['distance'] = '';
                }
            }
        }
        return $list;
    }

    // 经纬度排序sql组装
    public function get_distance_sql($lat, $lng, $as_name = 'distance_field')
    {
//        return "(6371*acos(cos(radians($lat))*cos(radians(`latitude`)) * cos(radians(`longitude`)-radians($lng)) + sin(radians($lat))*sin(radians(`latitude`)))) AS $as_name";
        return sprintf('round(6371*sqrt( pow((PI()*(abs(`longitude`-%f))/180) * cos(PI()*(`longitude`+%f)/360),2) + pow((PI()*abs(`longitude`-%f)/180),2)),4) as %s', $lat, $lat, $lng, $as_name);
    }


    public function getActivityDetail($activity_sn) {
        $detail = self::with(['user', 'applys' => function ($query) {
            $query->with(['user', 'userInfo']);
        }])->where(['activity_sn' => $activity_sn])->find();
        if (empty($detail)) return [];
        $detail = $detail->toArray();
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
                $temp = [
                    'guid' => $sv['guid'],
                    'player_level' => $sv['player_level'],
                    'nickname' => $sv['nickname'],
                    'gender' => $sv['gender'],
                    'avatar' => $sv['user']['avatar'],
                    'constellation' => $sv['userInfo']['constellation']
                ];
                if ($sv['team_no'] == 1){
                    $team_one_list[] = $temp;
                } elseif ($sv['team_no'] == 2) {
                    $team_two_list[] = $temp;
                } else {
                    $team_list[] = $temp;
                }
            }
        }
        $user = $detail['user'];
        unset($detail['user']);
        $detail['nickname'] = $user['nickname'] ?? '';
        $detail['avatar'] = $user['avatar'] ?? '';
        $detail['male_num'] = $male_num;
        $detail['female_num'] = $female_num;
        $detail['team_list'] = $team_list;
        $detail['team_one_list'] = $team_one_list;
        $detail['team_two_list'] = $team_two_list;
        return $detail;
    }

    // 获取活动信息
    public function getActivityInfo($activity_sn) {
        $info = self::where(['activity_sn' => $activity_sn, 'mark' => 1])->find();
        return !empty($info)?$info->toArray():[];
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

    public function user()
    {
        return $this->hasOne(WxUser::class, 'guid', 'guid')->field(['guid', 'avatar', 'nickname']);
    }

}
