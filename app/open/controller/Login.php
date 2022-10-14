<?php
namespace app\open\controller;
use app\common\controller\OpenBase;
use think\facade\Db;
use think\Validate;
use hg\apidoc\annotation as Apidoc;
/**
 * @Apidoc\Title("第三方授权")
 */
class Login extends OpenBase
{
    /**
     * @Apidoc\Title("登录")
     * @Apidoc\Author("pengking")
     * @Apidoc\Param("AppId", type="string",require=true,desc="用户名" )
     * @Apidoc\Param("AppSecret", type="string",require=true,desc="密码" )
     * @Apidoc\Returned("OpenAuthorization", type="string", desc="OpenAuthorization")
     * @Apidoc\Returned("expiration_time", type="int", desc="过期时间有效期7200秒")
     */
    public function login()
    {
        //数据验证
        $validate = new Validate;
        $validate->rule([
            'AppId' => 'require|max:25',
            'AppSecret' => 'require|max:50',
        ]);
        $validate->message([
            'AppId.require' => '账号不能为空',
            'AppSecret.require' => '秘钥不能为空',
        ]);
        $params = request()->post();
        if (!$validate->check($params)) {
            base_msg($validate->getError());
        }
        $info = Db::name('oauth_client')
            ->where('client_id', $params['AppId'])
            ->where('client_secret', $params['AppSecret'])
            ->find();
        if (empty($info)) {
            return err_msg('帐号或密码不正确');
        }
        if($info['expire_time']<time()){
            return err_msg('授权已过期');
        }
        if($info['mark']!==1){
            return err_msg('用户被禁用');
        }

        if(!empty($info['ip'])){
            //获取客户端ip
            if(check_ip(get_client_ip(),$info['ip'])===false){
                return err_msg('ip未授权');
            }
        }
        $jwt = new \Jwt();
        $data['OpenAuthorization'] = "BearerOpen ".$jwt->getToken($info['client_id'],2);
        $data['expire_time'] =  time()+7200;
        return  ok_msg('成功',$data);
    }
}