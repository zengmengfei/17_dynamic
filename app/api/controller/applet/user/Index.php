<?php

namespace app\api\controller\applet\user;

use app\api\model\user\CardBrowse;
use app\api\model\user\WxUser;
use app\common\controller\ApiBase;
use think\Validate;
use hg\apidoc\annotation as Apidoc;
/**
 * @Apidoc\Title("用户信息接口")
 * @Apidoc\Group ("user")
 */
class Index extends ApiBase
{

    public $params;
    public $wxUser;

    public function initialize()
    {
        parent::initialize();
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
     * @Apidoc\Param("birthday", type="string",require=true,desc="生日" )
     * @Apidoc\Param("location", type="string",require=true,desc="所在地" )
     * @Apidoc\Param("profession", type="string",require=true,desc="职业" )
     * @Apidoc\Param("constellation", type="string",require=true,desc="星座" )
     * @Apidoc\Param("tags", type="string",require=false,desc="标签" )
     * @Apidoc\Param("imgs", type="string",require=false,desc="主页图片" )
     * @Apidoc\Param("about_me", type="string",require=false,desc="关于我" )
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
           base_msg($validate->getError());
        }
        $res = $this->wxUser->updateUser($this->params);
        return $res?ok_msg('更新成功！', $this->params):err_msg('更新用户信息失败');
    }


    /**
     * @Apidoc\Title("用户guid获取用户详情")
     * @Apidoc\Author("pengking")
     * @Apidoc\Method("GET")
     * @Apidoc\Param("guid", type="string",require=true,desc="用户唯一值" )
     * @Apidoc\Returned("data", type="json", desc="用户数据")
     */
    public function get_user_info(){
        return  ok_msg('ok', $this->userInfo);
    }

    /**
     * @Apidoc\Title("用户guid获取名片详情")
     * @Apidoc\Author("pengking")
     * @Apidoc\Method("GET")
     * @Apidoc\Param("guid", type="string",require=true,desc="用户唯一值" )
     * @Apidoc\Param("uu_guid", type="string",require=true,desc="被查看用户guid" )
     * @Apidoc\Returned("data", type="json", desc="用户数据")
     */
    public function get_user_card(){
        //数据验证
        $validate = new Validate;
        $validate->rule([
            'guid' => 'require',
            'uu_guid' => 'require',
        ]);
        $validate->message([
            'guid.require' => '用户guid不能为空',
            'uu_guid.require' => '被查看用户guid不能为空',
        ]);
        if (!$validate->check($this->params)) {
            return $validate->getError();
        }
        $carInfo = $this->wxUser->getUserInfoByUid($this->params['uu_guid']);
        if (empty($carInfo)) return  ok_msg('未查询到用户名片信息');
        $cardBrowse = new CardBrowse();
        $cardBrowse->userCardBrowse($this->params['guid'], $this->params['uu_guid']);
        return  ok_msg('ok', $carInfo);
    }

    /**
     * @Apidoc\Title("谁看过我列表")
     * @Apidoc\Author("pengking")
     * @Apidoc\Method("GET")
     * @Apidoc\Param("guid", type="string",require=true,desc="用户唯一值" )
     * @Apidoc\Returned("data", type="json", desc="用户数据")
     */
    public function browse_me_lsit(){
        $cardBrowse = new CardBrowse();
        $browseList = $cardBrowse->browseMeLsit($this->params['guid']);
        return  ok_msg('ok', $browseList);
    }
}