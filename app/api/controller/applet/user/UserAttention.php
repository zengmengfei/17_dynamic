<?php

namespace app\api\controller\applet\user;

use app\api\model\user\Attention;
use app\api\model\user\WxUser;
use app\common\controller\ApiBase;
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
    public $userInfo;

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
        if (empty($this->params['to_guid'])) return err_msg('动态唯一标识未传递');
        $attentionModel = new Attention();
        $res = $attentionModel->changeAttention($this->params);
        return $res?ok_msg('操作成功', $this->params):err_msg('操作失败');
    }


}