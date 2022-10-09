<?php

namespace app\api\controller\applet\user;

use app\api\model\user\Attention;
use app\api\model\user\WxUser;
use app\common\controller\ApiBase;
use think\Validate;
use hg\apidoc\annotation as Apidoc;
/**
 * @Apidoc\Title("用户关注接口")
 * @Apidoc\Group ("user")
 */
class UserAttention extends ApiBase
{
    //不需要登录接口
    protected $noNeedLogin = ['*'];

    public $params;
    public $wxUser;
    public $userinfo;

    public function initialize()
    {
        $params = request()->param();
        $this->params = $params;
        $this->wxUser = new WxUser();
    }



    /**
     * @Apidoc\Title("关注取关接口")
     * @Apidoc\Author("pengking")
     * @Apidoc\Method("POST")
     * @Apidoc\Param("guid", type="string",require=true,desc="用户唯一值" )
     * @Apidoc\Param("to_guid", type="string",require=true,desc="被关注人guid不可为空" )
     * @Apidoc\Returned("data", type="json", desc="用户数据")
     */
     public function change_attention(){
        if ($this->userCheck() !== true) return err_msg('用户未登录');
        if (empty($this->params['to_guid'])) return err_msg('动态唯一标识未传递');
        $attentionModel = new Attention();
        $res = $attentionModel->changeAttention($this->params);
        return $res?ok_msg('操作成功', $this->params):err_msg('操作失败');
    }




    public function userCheck() {
        //数据验证
        $validate = new Validate;
        $validate->rule([
            'guid' => 'require',
        ]);
        $validate->message([
            'guid.require' => '用户唯一值不能为空',
        ]);
        if (!$validate->check($this->params)) {
            return $validate->getError();
        }
        $userinfo = $this->wxUser->getUserInfoByUid($this->params['guid']);
        if (empty($userinfo)) {
            return '用户信息不存在';
        }
        $this->userinfo = $userinfo;
        return true;
    }

}