<?php

namespace app\api\controller\sys\wechat;
use app\common\controller\ApiBase;
use EasyWeChat\Factory;
use think\facade\Db;
use hg\apidoc\annotation as Apidoc;
use think\facade\Queue;

/**
 * @Apidoc\Title("微信-小程序设置")
 * @Apidoc\Group("weixin")
 */
class Xcx extends ApiBase {
    protected  $app;
    protected  $config;
    public function __construct()
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
    }
    //不需要登录接口
    protected $noNeedLogin = ['get_mobile','get_wx_info','message_send','duilie'];

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
        ]);
        $message=([
            'code.require' => 'code不能为空',
        ]);

        $this->api_validate($params,$rule,$message);
        $accessToken = $this->app->access_token;
        $token = $accessToken->getToken();
        $url = "https://api.weixin.qq.com/wxa/business/getuserphonenumber?access_token=".$token['access_token'];

        //$params['access_token'] = $token['access_token'];
        $res = https_request_wx($url,$params,"json");
        if($res['errcode']==0){
            $info = Db::name('user')->where('mobile',$res['phone_info']['phoneNumber'])->find();
            //有效期时间 7天
            $jwt = new \Jwt();
            $info['Authorization'] = "BearerPk" . $jwt->getToken($info['guid'], 24 * 7);
            $info['expire_time'] = time() + 24 * 7 * 3600;
            return ok_msg('操作成功',$info);
        }else{
            return err_msg($res['errcode']."-------".$res['errmsg']);
        }

    }
    /**
     * @Apidoc\Title("获微信信息1")
     * @Apidoc\Author("pengking")
     * @Apidoc\Param("session", type="string", require=true, desc="session")
     * @Apidoc\Param("iv", type="string", require=true, desc="iv")
     * @Apidoc\Param("encryptedData", type="string", require=true, desc="encryptedData")
     */
    public function  get_wx_info(){
        $params = request()->param();
        //数据验证
        $rule=([
            'session' => 'require',
            'iv' => 'require',
            'encryptedData' => 'require',
        ]);
        $message=([
            'session.require' => 'session不能为空',
            'iv.require' => 'iv不能为空',
            'encryptedData.require' => 'encryptedData不能为空',
        ]);
        $this->api_validate($params,$rule,$message);

        $decryptedData = $this->app->encryptor->decryptData($params['session'], $params['iv'], $params['encryptedData']);
        return ok_msg('操作成功',$decryptedData);
    }

    /**
     * @Apidoc\Title("获微信信息2")
     * @Apidoc\Author("pengking")
     * @Apidoc\Header(ref="api_login")
     * @Apidoc\Param("code", type="string", require=true, desc="code")
     */
    public  function  get_wx_info2(){
        $params = request()->param();
        //数据验证
        $rule=([
            'code' => 'require',
        ]);
        $message=([
            'code.require' => 'code不能为空',
        ]);
        $this->api_validate($params,$rule,$message);
        $url = "https://api.weixin.qq.com/sns/jscode2session?appid={$this->config["app_id"]}&secret={$this->config["secret"]}&js_code={$params['code']}&grant_type=authorization_code";
        $res = json_decode(curl_get($url),true);
        if($res){
            $guid = request()->header('guid');
            $data['xcx_openid'] = $res['openid'];
            $data['avatar'] = $params['avatarUrl'];
            $data['nickname'] = $params['nickName'];
            Db::name('user')->where('guid',$guid)->update($data);
            $info = Db::name('user')->where('guid',$guid)->find();
            //有效期时间 7天
            $jwt = new \Jwt();
            $info['Authorization'] = "BearerPk" . $jwt->getToken($info['guid'], 24 * 7);
            $info['expire_time'] = time() + 24 * 7 * 3600;
            return ok_msg('操作成功',$info);
        }else{
            return err_msg('操作失败');
        }

    }
    /**
     * @Apidoc\Title("发送模板消息")
     * @Apidoc\Author("pengking")
     * @Apidoc\Header(ref="api_login")
     * @Apidoc\Param("template_id", type="string", require=true, desc="template_id")
     * @Apidoc\Param("openid", type="string", require=true, desc="openid")
     */
    public function message_send(){
        $params = request()->param();
        //数据验证
        $rule=([
            'template_id' => 'require',
            'openid' => 'require',
        ]);
        $message=([
            'template_id.require' => 'template_id不能为空',
            'openid.require' => 'openid不能为空',
        ]);
        $this->api_validate($params,$rule,$message);

        $data = [
            'template_id' => $params['template_id'], // 所需下发的订阅模板id
            'touser' => $params['openid'],     // 接收者（用户）的 openid
            'page' => 'page/index/index',       // 点击模板卡片后的跳转页面，仅限本小程序内的页面。支持带参数,（示例index?foo=bar）。该字段不填则模板无跳转。
            'data' => [         // 模板内容，格式形如 { "key1": { "value": any }, "key2": { "value": any } }
                'thing2' => [
                    'value' => '通知内容',
                ],
                'time3' => [
                    'value' => '2020/3/11 10:33',
                ],
                'thing4' => [
                    'value' => '请注意及时查看',
                ],
            ],
        ];

        $res =$this->app->subscribe_message->send($data);
        return ok_msg('ok',$res);
    }

    /**
     * @Apidoc\Title("添加队列")
     * @Apidoc\Author("pengking")
     */
    public function add_queue_test(){
        for($i=0;$i<10;$i++){
            $data['template_id'] ="JN8O1LwAlB4FVaZ6OAd5wGJDa3gGqAb-lmVFR70vDzg";
            $data['openid'] ="ocDXS5aIZrAeGVMaCeHY43bSLWfQ";
            Queue::push('app\api\controller\sys\queue\Dojob@sendMsgXcx',$data,'sendMsgXcx');
        }
        return ok_msg('发送成功');

    }

    /**
     * @Apidoc\Title("获取access_token")
     * @Apidoc\Author("pengking")
     */
    public function  get_access_toekn(){
        $accessToken = $this->app->access_token;
        $token = $accessToken->getToken();
        if($token['access_token']){
            return ok_msg('操作成功',$token['access_token']);
        }else{
            return err_msg('获取失败');
        }
    }
    /**
     * @Apidoc\Title("获取小程序码 适用于需要的码数量较少的业务场景")
     * @Apidoc\Author("pengking")
     * @Apidoc\Param("paht", type="string", require=true, desc="页面路径")
     */
    public function  app_code(){
        $params = request()->param();
        //数据验证
        $rule=([
            'paht' => 'require',

        ]);
        $message=([
            'path.require' => 'path不能为空',
        ]);

        $this->api_validate($params,$rule,$message);
        $response  = $this->app->app_code->get($params['path']);

//        if($token['access_token']){
//            return ok_msg('操作成功',$token['access_token']);
//        }else{
//            return err_msg('获取失败');
//        }
    }
    /**
     * @Apidoc\Title("获取小程序码 适用于需要的码数量极多，或仅临时使用的业务场景")
     * @Apidoc\Author("pengking")
     * @Apidoc\Param("scene", type="string", require=true, desc="页面路径")
     * @Apidoc\Param("paht", type="string", require=true, desc="页面路径")
     */
    public function  app_getUnlimit(){
        $params = request()->param();
        //数据验证
        $rule=([
            'scene' => 'require',
            'paht' => 'require',

        ]);
        $message=([
            'scene.require' => 'scene不能为空',
            'path.require' => 'path不能为空',
        ]);

        $this->api_validate($params,$rule,$message);
        $optional['path'] = $params['path'];
        $response  = $this->app->app_code->getUnlimit($params['scene'],$optional);

//        if($token['access_token']){
//            return ok_msg('操作成功',$token['access_token']);
//        }else{
//            return err_msg('获取失败');
//        }
    }

    /**
     * @Apidoc\Title("文本安全内容检测")
     * @Apidoc\Author("pengking")
     * @Apidoc\Param("content", type="string", require=true, desc="传入要检测的文本内容，长度不超过500K字节")
     */
    public function  checkText(){
        $params = request()->param();
        //数据验证
        $rule=([
            'content' => 'require',
        ]);
        $message=([
            'content.require' => 'content不能为空',
        ]);
        $this->api_validate($params,$rule,$message);

        $response  = json_decode($this->app->content_security->checkText($params['content']),true);
        if($response['errcode']!==0){
            return err_msg($response['errmsg'],[],$response['errcode']);
        }

    }

    /**
     * @Apidoc\Title("图片安全内容检测")
     * @Apidoc\Author("pengking")
     * @Apidoc\Param("image_paht", type="string", require=true, desc="所传参数为要检测的图片文件的绝对路径，图片格式支持PNG、JPEG、JPG、GIF, 像素不超过 750 x 1334，同时文件大小以不超过 300K 为宜，否则可能报错")
     */
    public function  checkImage(){
        $params = request()->param();
        //数据验证
        $rule=([
            'image_paht' => 'require',
        ]);
        $message=([
            'image_paht.require' => '图片路径不能为空',
        ]);
        $this->api_validate($params,$rule,$message);
        $path = app()->getRootPath() . 'public/uploads'.$params['image_paht'];
        $response  = json_decode($this->app->content_security->checkImage($path),true);
        if($response['errcode']!==0){
            return err_msg($response['errmsg'],[],$response['errcode']);
        }

    }






}
