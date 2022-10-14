<?php

namespace app\api\controller\sys\user;
use app\api\model\TqUser;
use app\common\controller\ApiBase;
use think\facade\Db;
use think\Validate;
use hg\apidoc\annotation as Apidoc;
/**
 * @Apidoc\Title("统一用户")
 * @Apidoc\Group ("user")
 */
class Index extends ApiBase
{
    //不需要登录接口
    protected $noNeedLogin = ['no_register','get_user_info_tq'];
    /**
     * @Apidoc\Title("注册账号")
     * @Apidoc\Author("pengking")
     * @Apidoc\Param("mobile", type="string",require=false,default="",desc="手机号码" )
     * @Apidoc\Param("password", type="string",require=false,desc="密码" )
     * @Apidoc\Param("name", type="string",require=false,desc="姓名" )
     * @Apidoc\Param("username", type="string",require=false,desc="用户名" )
     * @Apidoc\Param("idcard", type="string",require=false,desc="身份证号码" )
     * @Apidoc\Param("nickname", type="string",require=false,desc="用户昵称" )
     * @Apidoc\Param("avatar", type="string",require=false,desc="用户头像" )
     * @Apidoc\Param("address", type="string",require=false,desc="地址" )
     * @Apidoc\Param("status", type="int",require=false,desc="状态 1、启用  2、停用" )
     * @Apidoc\Param("nation_id", type="int",require=false,desc="民族表id" )
     * @Apidoc\Param("political_id", type="int",require=false,desc="政治面貌id" )
     * @Apidoc\Param("political_type_id", type="int",require=false,desc="党员类型" )
     * @Apidoc\Param("marital_status_id", type="int",require=false,desc="婚姻状态表id" )
     * @Apidoc\Param("disability_id", type="int",require=false,desc="残疾表id" )
     * @Apidoc\Param("focus", type="int",require=false,desc="重点人群id" )
     * @Apidoc\Param("xcx_openid", type="string",require=false,desc="公众号openid" )
     * @Apidoc\Param("gzh_openid", type="string",require=false,desc="小程序openid" )
     * @Apidoc\Param("union_id", type="string",require=false,desc="开放平台union_id" )
     * @Apidoc\Param("qywx_user_id", type="string",require=false,desc="企业微信用户id" )
     * @Apidoc\Returned("guid", type="string", desc="用户id")
     * @Apidoc\Returned("Authorization", type="string", desc="用户加密串")
     * @Apidoc\Returned("expire_time", type="string", desc="过期时间")
     */

    public  function  tq_user_register(){

        $params = request()->param();
        //设置用户唯一值
        $params['guid'] = get_guid_v4();
        //获取客户端ip
        $params['login_ip'] = get_client_ip();
        //生成加密盐
        $params['salt'] = get_random_str(5,4);
        if(empty($params['password'])){
            //初始化密码
            $params['password'] = get_password_salt(config('domain.api_reg_passwd'),$params['salt']);
        }else{
            $params['password'] = get_password_salt($params['password'],$params['salt']);
        }
        if(!empty($params['mobile'])){
            $info = Db::name('Tq_user')->where('mobile',$params['mobile'])->find();
            if(!empty($info)){
                return  err_msg('此手机号码已注册');
            }
        }
        try{
            $tq_user = new TqUser();
            //新增数据
            $tq_user::create($params);
        }catch (\Exception $e) {
            //return  err_msg($e->getMessage());
            return  err_msg('注册失败');
        }
        $jwt = new \Jwt();
        $return['guid'] = $params['guid'];
        //有效期时间 7天
        $return['Apiauthorization'] =  "BearerApi ".$jwt->getToken($params['guid'],24*7);
        $return['expire_time'] =  time()+24*7*3600;
        return  ok_msg('注册成功！',$return);
    }

    /**
     * @Apidoc\Title("更新用户信息")
     * @Apidoc\Author("pengking")
     * @Apidoc\Header(ref="api_login")
     * @Apidoc\Param("mobile", type="string",require=false,desc="手机号码" )
     * @Apidoc\Param("password", type="string",require=false,desc="密码" )
     * @Apidoc\Param("name", type="string",require=false,desc="姓名" )
     * @Apidoc\Param("username", type="string",require=false,desc="用户名" )
     * @Apidoc\Param("idcard", type="string",require=false,desc="身份证号码" )
     * @Apidoc\Param("nickname", type="string",require=false,desc="用户昵称" )
     * @Apidoc\Param("avatar", type="string",require=false,desc="用户头像" )
     * @Apidoc\Param("address", type="string",require=false,desc="地址" )
     * @Apidoc\Param("status", type="int",require=false,desc="状态 1、启用  2、停用" )
     * @Apidoc\Param("nation_id", type="int",require=false,desc="民族表id" )
     * @Apidoc\Param("political_id", type="int",require=false,desc="政治面貌id" )
     * @Apidoc\Param("political_type_id", type="int",require=false,desc="党员类型" )
     * @Apidoc\Param("marital_status_id", type="int",require=false,desc="婚姻状态表id" )
     * @Apidoc\Param("disability_id", type="int",require=false,desc="残疾表id" )
     * @Apidoc\Param("focus", type="int",require=false,desc="重点人群id" )
     * @Apidoc\Param("xcx_openid", type="string",require=false,desc="公众号openid" )
     * @Apidoc\Param("gzh_openid", type="string",require=false,desc="小程序openid" )
     * @Apidoc\Param("union_id", type="string",require=false,desc="开放平台union_id" )
     * @Apidoc\Param("qywx_user_id", type="string",require=false,desc="企业微信用户id" )
     * @Apidoc\Returned("guid", type="string", desc="用户id")
     * @Apidoc\Returned("Authorization", type="string", desc="用户加密串")
     * @Apidoc\Returned("expire_time", type="string", desc="过期时间")
     */

    public  function  update_user(){
        $params = request()->param();
        $guid  = request()->header('guid','');
        $res = Db::name('tq_user')->where('guid',$guid)->update($params);
        if($res){
            return  ok_msg('更新成功！',$params);
        }else{
            return  ok_msg('更新成功！',$params);
        }
    }

    /**
     * @Apidoc\Title("手机号和密码登录")
     * @Apidoc\Author("pengking")
     * @Apidoc\Param("mobile", type="string",require=true,default="15972900101",desc="手机号码" )
     * @Apidoc\Param("password", type="string",require=true,default="Tq2017@321.",desc="密码" )
     * @Apidoc\Returned("data", type="json", desc="用户数据")
     */

    public function mobile_login()
    {
        //数据验证
        $validate = new Validate;
        $validate->rule([
            'mobile' => 'require|mobile',
            'password' => 'require',
        ]);
        $validate->message([
            'mobile.require' => '账号不能为空',
            'mobile.mobile' => '手机号格式错误',
            'password.require' => '密码不能为空',
        ]);
        $params = request()->param();
        if (!$validate->check($params)) {
            base_msg($validate->getError());
        }
        $info = Db::name('tq_user')
            ->where('mobile', $params['mobile'])
            ->find();
        if (empty($info)) {
            return err_msg('用户名或密码错误！');
        } else {
            if ($info['password'] !== get_password_salt($params['password'], $info['salt'])) {
                return err_msg('用户名或密码错误！');
            }else{
                //有效期时间 7天
                $jwt = new \Jwt();
                $info['Apiauthorization'] =  "BearerApi ".$jwt->getToken($info['guid'],24*7);
                $info['expire_time'] = time() + 24 * 7 * 3600;
                return ok_msg('登录成功！', $info);
            }
        }
    }

    /**
     * @Apidoc\Title("公众号登录")
     * @Apidoc\Author("pengking")
     * @Apidoc\Param("openid", type="string",require=true,desc="openid" )
     * @Apidoc\Returned("data", type="json", desc="用户数据")
     */

    public function gzh_login()
    {
        //数据验证
        $validate = new Validate;
        $validate->rule([
            'openid' => 'require',
        ]);
        $validate->message([
            'openid.require' => 'openid不能为空',
        ]);
        $params = request()->param();
        if (!$validate->check($params)) {
            base_msg($validate->getError());
        }
        $info = Db::name('tq_user')
            ->where('gzh_openid', $params['openid'])
            ->find();
        if (empty($info)) {
            return err_msg('用户不存在！');
        } else {
            //有效期时间 7天
            $jwt = new \Jwt();
            $info['Apiauthorization'] =  "BearerApi ".$jwt->getToken($info['guid'],24*7);
            $info['expire_time'] = time() + 24 * 7 * 3600;
            return ok_msg('成功！', $info);
        }
    }

    /**
     * @Apidoc\Title("小程序登录")
     * @Apidoc\Author("pengking")
     * @Apidoc\Param("openid", type="string",require=true,desc="openid" )
     * @Apidoc\Returned("data", type="json", desc="用户数据")
     */

    public function xcx_login()
    {
        //数据验证
        $validate = new Validate;
        $validate->rule([
            'openid' => 'require',
        ]);
        $validate->message([
            'openid.require' => 'openid不能为空',
        ]);
        $params = request()->param();
        if (!$validate->check($params)) {
            base_msg($validate->getError());
        }
        $info = Db::name('tq_user')
            ->where('xcx_openid', $params['openid'])
            ->find();
        if (empty($info)) {
            return err_msg('用户不存在');
        } else {
            //有效期时间 7天
            $jwt = new \Jwt();
            $info['Apiauthorization'] =  "BearerApi ".$jwt->getToken($info['guid'],24*7);
            $info['expire_time'] = time() + 24 * 7 * 3600;
            return ok_msg('成功！', $info);
        }
    }

    /**
     * @Apidoc\Title("企业微信登录")
     * @Apidoc\Author("pengking")
     * @Apidoc\Param("user_id", type="string",require=true,desc="user_id" )
     * @Apidoc\Returned("data", type="json", desc="用户数据")
     */

    public function qywx_login()
    {
        //数据验证
        $validate = new Validate;
        $validate->rule([
            'user_id' => 'require',
        ]);
        $validate->message([
            'user_id.require' => 'user_id不能为空',
        ]);
        $params = request()->param();
        if (!$validate->check($params)) {
            base_msg($validate->getError());
        }
        $info = Db::name('tq_user')
            ->where('qywx_user_id', $params['user_id'])
            ->find();
        if (empty($info)) {
            return err_msg('用户不存在！');
        } else {
            //有效期时间 7天
            $jwt = new \Jwt();
            $info['Apiauthorization'] =  "BearerApi ".$jwt->getToken($info['guid'],24*7);
            $info['expire_time'] = time() + 24 * 7 * 3600;
            return ok_msg('登录成功！', $info);
        }
    }

    /**
     * @Apidoc\Title("微信开放平台登录")
     * @Apidoc\Author("pengking")
     * @Apidoc\Param("union_id", type="string",require=true,desc="union_id" )
     * @Apidoc\Returned("data", type="json", desc="用户数据")
     */

    public function wx_open_login()
    {

        //数据验证
        $validate = new Validate;
        $validate->rule([
            'union_id' => 'require',
        ]);
        $validate->message([
            'union_id.require' => 'union_id不能为空',
        ]);
        $params = request()->param();
        if (!$validate->check($params)) {
            base_msg($validate->getError());
        }
        $info = Db::name('tq_user')
            ->where('union_id', $params['union_id'])
            ->find();
        if (empty($info)) {
            return err_msg('用户不存在！');
        } else {
            //有效期时间 7天
            $jwt = new \Jwt();
            $info['create_time'] = datetime($info['create_time']);
            $info['Apiauthorization'] =  "BearerApi ".$jwt->getToken($info['guid'],24*7);
            $info['expire_time'] = time() + 24 * 7 * 3600;
            return ok_msg('登录成功！', $info);
        }
    }




    /**
     * @Apidoc\Title("根据获取用户详情内部接口不对外使用")
     * @Apidoc\Author("pengking")
     * @Apidoc\Param("user_id", type="string",require=true,desc="用户唯一值" )
     * @Apidoc\Returned("data", type="json", desc="用户数据")
     */
    public function get_user_info_tq(){
        //数据验证
        $validate = new Validate;
        $validate->rule([
            'user_id' => 'require',
        ]);
        $validate->message([
            'user_id.require' => '用户唯一值不能为空',
        ]);
        $params = request()->param();
        if (!$validate->check($params)) {
            base_msg($validate->getError());
        }
        $info = Db::name('tq_user')
            ->where('guid|mobile|idcard|xcx_openid|gzh_openid|union_id|qywx_user_id',$params['user_id'])
            ->find();
        if(empty($info)){
            return  err_msg('获取失败！');
        }else{
            //有效期时间 7天
            $jwt = new \Jwt();
            $info['create_time'] = datetime($info['create_time']);
            $info['Apiauthorization'] =  "BearerApi ".$jwt->getToken($info['guid'],24*7);
            $info['expire_time'] = time() + 24 * 7 * 3600;
            return  ok_msg('获取成功！',$info);
        }
    }

}