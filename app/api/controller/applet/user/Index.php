<?php

namespace app\api\controller\applet\user;

use app\api\model\user\WxUser;
use app\common\controller\ApiBase;
use think\Validate;
use hg\apidoc\annotation as Apidoc;
/**
 * @Apidoc\Title("小程序用户接口")
 * @Apidoc\Group ("user")
 */
class Index extends ApiBase
{

    public $params;
    public $wxUser;

    public function initialize()
    {
        $params = request()->param();
        $this->params = $params;
        $this->wxUser = new WxUser();
    }

    /**
     * @Apidoc\Title("更新用户信息")
     * @Apidoc\Author("pengking")
     * @Apidoc\Method("POST")
     * @Apidoc\Param("guid", type="string",require=true,desc="用户唯一标识" )
     * @Apidoc\Param("nickname", type="string",require=true,desc="昵称" )
     * @Apidoc\Param("avatar", type="string",require=true,desc="头像" )
     * @Apidoc\Param("gender", type="string",require=true,desc="性别" )
     * @Apidoc\Param("tags", type="string",require=false,desc="标签" )
     * @Apidoc\Param("user_sign", type="string",require=false,desc="个性签名" )
     * @Apidoc\Param("name", type="string",require=false,desc="姓名" )
     * @Apidoc\Param("mobile", type="string",require=false,desc="手机号" )
     * @Apidoc\Param("age", type="int",require=false,desc="年龄" )
     * @Apidoc\Param("profession", type="string",require=false,desc="职业" )
     * @Apidoc\Param("height", type="int",require=false,desc="身高" )
     * @Apidoc\Param("weight", type="int",require=false,desc="体重" )
     * @Apidoc\Param("income", type="string",require=false,desc="收入" )
     * @Apidoc\Param("marital_status", type="int",require=false,desc="婚姻状态 0：未知 10：未婚 20：已婚" )
     * @Apidoc\Param("state_love", type="int",require=false,desc="恋爱状态 0：未知 10：恋爱中 20：未恋爱" )
     * @Apidoc\Param("hobby", type="string",require=false,desc="爱好" )
     * @Apidoc\Param("ideal_partner", type="string",require=false,desc="理想型另一半" )
     * @Apidoc\Param("privacy_status", type="int",require=true,desc="隐私状态 10：公开 20：仅自己可见 30：仅玩过的人可见" )
     */
    public  function  update_user(){
        //数据验证
        $validate = new Validate;
        $validate->rule([
            'nickname' => 'require',
            'avatar' => 'require',
            'gender' => 'require',
        ]);
        $validate->message([
            'nickname.require' => '用户昵称不能为空',
            'avatar.require' => '用户头像不能为空',
            'gender.require' => '用户性别不能为空',
        ]);
        if (!$validate->check($this->params)) {
            return $validate->getError();
        }
        $res = $this->wxUser->updateUser($this->params);
        return $res?ok_msg('更新成功！', $this->params):err_msg('更新用户信息失败');
    }


    /**
     * @Apidoc\Title("根据用户guid获取用户详情")
     * @Apidoc\Author("pengking")
     * @Apidoc\Param("guid", type="string",require=true,desc="用户唯一值" )
     * @Apidoc\Returned("data", type="json", desc="用户数据")
     */
    public function get_user_info(){
        return  ok_msg('ok', $this->userInfo);
    }


}