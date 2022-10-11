<?php
declare (strict_types = 1);

namespace app\api\model\activity;

use app\api\model\ApiBaseModel;
use app\api\model\user\WxUser;
use app\api\model\user\WxUserinfo;
use think\facade\Db;

/**
 * @mixin \think\Model
 */
class Apply extends ApiBaseModel
{
    protected $name = "activity_apply";

    //活动报名
    public function apply($param) {
        $activityModel = new Activity();
        $activity_sn = $param['activity_sn'];
        $activityInfo = $activityModel->getActivityInfo($activity_sn);
        if (empty($activityInfo)) {
            base_msg('活动信息不存在');
        }
        if (time() > strtotime($activityInfo['activity_starttime'])) {
            base_msg('活动已开始,无法报名');
        }
        if ($activityInfo['current_num'] >= $activityInfo['total_num']) {
            base_msg('报名人数已满,无法报名');
        }
        if ($activityInfo['team_type'] == 10) {
            if (empty($param['team_no'])) {
                base_msg('报名人未选择队伍');
            } elseif ($param['team_no'] == 1 && $activityInfo['team_one_current_num'] >= $activityInfo['team_one_num']){
                base_msg('当前队伍人数已满');
            } elseif ($param['team_no'] == 2 && $activityInfo['team_two_current_num'] >= $activityInfo['team_two_num']){
                base_msg('当前队伍人数已满');
            }
        }
        $apply_sn = get_time_rand_code('ap');
        $entry_fee = $actual_fee = $activityInfo['entry_fee'];
        // 积分抵扣情况
        $deduction_fee = 0;
        $consumption_integral = 0;
        $team_no = $param['team_no'] ?? 0;
        $saveData = [
            'guid' => $param['guid'],
            'activity_sn' => $activity_sn,
            'apply_sn' => $apply_sn,
            'nickname' => $param['nickname'],
            'mobile' => $param['mobile'],
            'gender' => $param['gender'],
            'team_no' => $team_no,
            'player_level' => $param['player_level'] ?? 10,
            'is_deducted' => $param['is_deducted'] ?? 0,
            'entry_fee' => $entry_fee,
            'deduction_fee' => $deduction_fee,
            'actual_fee' => $actual_fee,
            'consumption_integral' => $consumption_integral,
            'status' => 20, // 目前暂设直接报名成功,忽略支付部分
        ];
        Db::startTrans();
        try {
            self::save($saveData);
            $acData = [];
            $acData['current_num'] = $activityInfo['current_num'] + 1;
            if ($team_no == 1) $acData['team_one_current_num'] = $activityInfo['team_one_current_num'] + 1;
            if ($team_no == 2) $acData['team_two_current_num'] = $activityInfo['team_two_current_num'] + 1;
            $activityModel::where(['activity_sn' => $activity_sn])->save($acData);
            // 提交事务
            Db::commit();
            return true;
        } catch (\Exception $e) {
            // 回滚事务
            Db::rollback();
            return false;
        }
    }

    public function user()
    {
        return $this->hasOne(WxUser::class, 'guid', 'guid')->field(['guid', 'avatar']);
    }

    public function userInfo()
    {
        return $this->hasOne(WxUserinfo::class, 'guid', 'guid')->field(['guid', 'constellation']);
    }
}
