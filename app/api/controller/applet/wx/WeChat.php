<?php

namespace app\api\controller\applet\wx;
use app\api\model\user\WxUser;
use app\common\controller\ApiBase;
use EasyWeChat\Factory;
use hg\apidoc\annotation as Apidoc;


/**
 * @Apidoc\Title("小程序登录注册接口")
 * @Apidoc\Group("weixin")
 */
class WeChat extends ApiBase {
    protected  $app;
    protected  $config;
    protected  $wxUser;
    public function initialize()
    {
        $this->config  = [
            'app_id' => get_db_config_data(3,"wechat_appid"),
            'secret' => get_db_config_data(3,"wechat_appsecret"),
            'token' => get_db_config_data(3,"wx_token"),
            'aes_key' => get_db_config_data(3,"wx_aeskey"),
            // 指定 API 调用返回结果的类型：array(default)/collection/object/raw/自定义类名
            'response_type' => 'array',
        ];
        $this->app = Factory::miniProgram( $this->config);
        $this->wxUser = new WxUser();
    }
    //不需要登录接口
    protected $noNeedLogin = ['*'];

    /**
     * @Apidoc\Title("获取手机号")
     * @Apidoc\Author("pengking")
     * @Apidoc\Param("code", type="string", require=true, desc="手机号获取凭证")
     */
    public function  get_mobile(){
        $params = request()->param();
        //数据验证
        $rule=([
            'code' => 'require',
            'iv' => 'require',
            'encryptedData' => 'require',
        ]);
        $message=([
            'code.require' => 'code不能为空',
        ]);
        $this->api_validate($params,$rule,$message);
        $session = $this->app->session($params['code']);
        $res = $this->app->encryptor->decryptData($session['session_key'], $params['iv'], $params['encryptedData']);
        if($res['errcode']==0){
            return ok_msg('操作成功',$res);
        }else{
            return err_msg($res['errcode']."-------".$res['errmsg']);
        }
    }

    /**
     * @Apidoc\Title("微信登录")
     * @Apidoc\Author("pengking")
     * @Apidoc\Param("code", type="string", require=true, desc="code")
     */
    public  function  wx_login(){
        $params = request()->param();
        //数据验证
        $rule=([
            'code' => 'require',
        ]);
        $message=([
            'code.require' => 'code不能为空',
        ]);
        $this->api_validate($params,$rule,$message);
        $user = $this->app->auth->session($params['code']);//获取openID
        if (empty($user['openid'])) return err_msg('登录失败');
        $userinfo = $this->wxUser->loginSaveUser($user['openid']);
        if (!empty($userinfo)) {
            return err_msg('授权登录失败');
        }
        return ok_msg('ok', $userinfo);
    }

}
