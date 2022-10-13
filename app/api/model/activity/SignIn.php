<?php
declare (strict_types = 1);

namespace app\api\model\activity;

use app\api\model\ApiBaseModel;
use think\facade\Db;

/**
 * @mixin \think\Model
 */
class SignIn extends ApiBaseModel
{
    protected $name = "activity_sign_in";

    public function createSignIn($param) {
        if (empty($param['activity_sn']) || empty($param['guid'])) base_msg('数据不完整，签到失败');
        $applyModel = new Apply();
        $applyInfo = $applyModel->applyInfo($param['guid'], $param['activity_sn']);
        if (empty($applyInfo)) base_msg('报名信息不存在，签到失败');
        $data = ['activity_sn' => $param['activity_sn'], 'guid' => $param['guid'], 'apply_sn' => $applyInfo['apply_sn']];
        $sign = self::where($data)->find();
        if (!empty($sign)) base_msg('用户已签到');
        return self::save($data);
    }


}
