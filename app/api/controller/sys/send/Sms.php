<?php
namespace app\api\controller\sys\send;
use app\common\controller\ApiBase;
use TencentCloud\Common\Credential;
use TencentCloud\Common\Exception\TencentCloudSDKException;
use TencentCloud\Common\Profile\ClientProfile;
use TencentCloud\Common\Profile\HttpProfile;
use TencentCloud\Sms\V20210111\Models\SendSmsRequest;
use TencentCloud\Sms\V20210111\SmsClient;
use think\facade\Db;
use think\Validate;
use hg\apidoc\annotation as Apidoc;
// 导入对应产品模块的client
// 导入要请求接口对应的Request类
// 导入可选配置类

/**
 * @Apidoc\Title("短信")
 * @Apidoc\Group("sys")
 */
class Sms extends ApiBase
{
     //不需要登录接口
     protected $noNeedLogin = ['send_reg_sms'];

    /**
     * @Apidoc\Title("发送注册短信")
     * @Apidoc\Author("pengking")
     * @Apidoc\Param("mobile", type="string",require=true,desc="手机号码" )
     * @Apidoc\Returned("data", type="array", desc="状态")
     */
    public function send_reg_sms(){

        $validate = new Validate;
        $validate->rule([
            'mobile' => 'require',
        ]);
        $validate->message([
            'mobile.require' => '手机号不能为空',
        ]);
        $params = request()->param();
        if (!$validate->check($params)) {
            base_msg($validate->getError());
        }
        $info = Db::name('tq_user')->where('mobile',$params['mobile'])->find();
        if(!empty($info)){
            return  err_msg('此手机号码已注册');
        }

        if(!empty(cache("reg_".$params['mobile']))){
            return err_msg("短信已发送");
        }

            try {
                $TXY_SecretId =  get_db_config_data(7,"TXY_SecretId");
                $TXY_SecretKey =  get_db_config_data(7,"TXY_SecretKey");
                $TXY_SMS_SDK_AppID = get_db_config_data(7,"TXY_SMS_SDK_AppID");
                $TXY_Reg_Code = get_db_config_data(7,"TXY_Reg_Code");
                $TXY_SMS = get_db_config_data(7,"TXY_SMS");
                $TemplateParamSet = json_encode(rand(100000,999999)); //随机六位数验证码方法,仅供参考
                //设置验证码有效期 5分钟
                cache("reg_".$params['mobile'],$TemplateParamSet,3000);
                $cred = new Credential($TXY_SecretId,$TXY_SecretKey);
                $httpProfile = new HttpProfile();
                $httpProfile->setEndpoint("sms.tencentcloudapi.com");
                $clientProfile = new ClientProfile();
                $clientProfile->setHttpProfile($httpProfile);
                $client = new SmsClient($cred, "ap-guangzhou", $clientProfile);
                $req = new SendSmsRequest();
                $send_params = array(
                    "PhoneNumberSet" => array("+86{$params['mobile']}"),  //+86 为中国大陆地区码，可拼接变量
                    "SmsSdkAppId" => $TXY_SMS_SDK_AppID,
                    "SignName" => $TXY_SMS,
                    "TemplateId" => $TXY_Reg_Code,
                    "TemplateParamSet" => array($TemplateParamSet)
                );
                $req->fromJsonString(json_encode($send_params));
                $resp = $client->SendSms($req);
                return ok_msg('ok',$resp);
            } catch (TencentCloudSDKException $e) {
                return err_msg('no',$e->getMessage());
            }
        }





}