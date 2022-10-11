<?php

namespace app\api\controller\applet\activity;

use app\api\model\activity\Apply;
use app\api\model\activity\Tags;
use app\common\controller\ApiBase;
use think\Validate;
use hg\apidoc\annotation as Apidoc;
/**
 * @Apidoc\Title("活动报名相关接口")
 * @Apidoc\Group ("user")
 */
class ActivityApply extends ApiBase
{

    public $params;

    public function initialize()
    {
        parent::initialize();
        $params = request()->param();
        $this->params = $params;
    }

    /**
     * @Apidoc\Title("用户活动报名接口")
     * @Apidoc\Author("pengking")
     * @Apidoc\Method("POST")
     * @Apidoc\Param("guid", type="string",require=true,desc="用户唯一值" )
     * @Apidoc\Param("activity_sn", type="string",require=true,desc="活动唯一标识" )
     * @Apidoc\Param("nickname", type="string",require=true,desc="昵称" )
     * @Apidoc\Param("mobile", type="string",require=true,desc="手机号" )
     * @Apidoc\Param("gender", type="int",require=true,desc="性别" )
     * @Apidoc\Param("player_level", type="int",require=true,desc="玩家等级" )
     * @Apidoc\Param("team_no", type="int",require=false,desc="队伍" )
     * @Apidoc\Param("is_deducted", type="int",require=false,desc="是否抵扣积分" )
     * @Apidoc\Returned("data", type="json", desc="用户数据")
     */
    public function apply() {
        //数据验证
        $validate = new Validate;
        $validate->rule([
            'activity_sn' => 'require',
            'nickname' => 'require',
            'mobile' => 'require',
            'gender' => 'require',
            'player_level' => 'require',
        ]);
        $validate->message([
            'activity_sn.require' => '活动sn不能为空',
            'nickname.require' => '昵称不能为空',
            'mobile.require' => '手机号不能为空',
            'gender.require' => '性别不能为空',
            'player_level.require' => '性别不能为空',
        ]);
        if (!$validate->check($this->params)) {
            return $validate->getError();
        }
        $applyModel = new Apply();
        $res = $applyModel->apply($this->params);
        return ok_msg('报名成功', $res);
    }



}