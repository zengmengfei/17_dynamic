<?php

namespace app\api\controller\sys\wechat;
use app\common\controller\ApiBase;
use EasyWeChat\Factory;
use EasyWeChat\Kernel\Messages\TextCard;
use hg\apidoc\annotation as Apidoc;
/**
 * @Apidoc\Title("微信-企业微信")
 * @Apidoc\Group("weixin")
 */
class Work extends  ApiBase
{

    protected  $config;
    protected  $app;
    public function __construct()
    {
        $this->config  = [
            'corp_id' => "ww301adb530ff09e85",//get_db_config_data(2,"wwf6e29231e1aaa1a1"),
            'agent_id' => '1000041',//get_db_config_data(2,"wx_appsecret"),
            'secret' => "U4r3GJKsMvEF-kBo38-BTH9djNrbekl3zKzzwh2tdPk",//get_db_config_data(2,"wx_token"),
        ];

        $this->app = Factory::work($this->config);
    }
    //不需要登录接口
    protected $noNeedLogin = ['get_openid'];

    /**
     * @Apidoc\Title("获取企业微信")
     * @Apidoc\Author("pengking")
     */
    public function  qywx_redirect(){
        // $callbackUrl 为授权回调地址
        $callbackUrl = 'https://apitest.tenqent.com/api/sys.wechat.Work/wx_callback'; // 需设置可信域名

        // 返回一个 redirect 实例
        $redirect =  $this->app->oauth->redirect($callbackUrl);

        // 获取企业微信跳转目标地址
        $targetUrl = $redirect->getTargetUrl();

        // 直接跳转到企业微信授权
        $redirect->send();
    }

    public function wx_callback(){
        $user = $this->app->oauth->user();
        cookie('qywx_user_id',$user->getId());
        return ok_msg('操作成功',$user->getId());
    }
    /**
     * @Apidoc\Title("发送消息")
     * @Apidoc\Author("pengking")
     */
    public  function  send_qywx_message(){

        // 获取 Messenger 实例
        $messenger = $this->app->messenger;

        // 准备消息
        $message = new TextCard([
            'title' => '你的请假单审批通过',
            'description' => '单号：1928373, ....',
            'url' => 'http://easywechat.com/oa/....'
        ]);
        $qywx_user_id = cookie("qywx_user_id");

        // 发送
        $res = $messenger->message($message)->toUser($qywx_user_id)->send();
        dump($this->app->user->getDepartmentUsers(1, true));
        if($res){
            return ok_msg('操作成功',$res);
        }
    }







}