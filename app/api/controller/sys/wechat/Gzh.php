<?php

namespace app\api\controller\sys\wechat;
use app\common\controller\ApiBase;
use EasyWeChat\Factory;
use hg\apidoc\annotation as Apidoc;
/**
 * @Apidoc\Title("微信-公众号设置")
 * @Apidoc\Group("weixin")
 */
class Gzh extends ApiBase
{
    protected  $config;

    public function __construct()
    {
        $this->config  = [
            'app_id' => get_db_config_data(2,"wx_appid"),
            'secret' => get_db_config_data(2,"wx_appsecret"),
            'token' => get_db_config_data(2,"wx_token"),
            'aes_key' => get_db_config_data(2,"wx_aeskey"),
            // 指定 API 调用返回结果的类型：array(default)/collection/object/raw/自定义类名
            //'response_type' => 'array',
            'oauth' => [
                'scopes'   => ['snsapi_userinfo'],
                'callback' => '/api/sys.wechat.Gzh/wx_callback',
            ],
        ];

    }
    //不需要登录接口
    protected $noNeedLogin = ['get_openid','wx_callback'];


    public function get_gzh_user_info(){
        if(session('wechat_user')){
            return  ok_msg('成功',session('wechat_user'));
        }
        $app = Factory::officialAccount($this->config);
        // 未登录,跳转到登录界面
        if (!session('wechat_user')) {
            $oauth = $app->oauth;
           // halt($oauth);
            return redirect($oauth->redirect());
        }
    }

    //保存登录信息
    public function wx_callback(){
        $code = input('code','');
        $app = Factory::officialAccount($this->config);
        $user = $app->oauth->user()->toArray();
        session('wechat_user',$user);
        if($user){
           return  redirect('get_gzh_user_info');
        }

    }

    /**
     * @Apidoc\Title("获取微信公众号信息")
     * @Apidoc\Author("pengking")
     */
    public function index2(){
        if(!session('wechat_user')){
            $this->redirect('/login',302);
        }
        $seo['title'] = config()['web']['site_title'];
        $seo['keywords'] = config()['web']['site_keywords'];
        $seo['description'] = config()['web']['site_description'];
        $this->assign('seo', $seo);
        $app = Factory::officialAccount($this->config);
        $this->assign('app', $app);
        return view($this->tpl);
    }


}