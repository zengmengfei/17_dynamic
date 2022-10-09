<?php

namespace app\api\controller\sys\queue;
use think\facade\Queue;
use hg\apidoc\annotation as Apidoc;
/**
 * @Apidoc\Title("发布队列")
 * @Apidoc\Group("sys")
 */
class Pushjob
{
    /**
     * @Apidoc\Title("推送企业微信消息")
     * @Apidoc\Author("pengking")
     * @Apidoc\Param("mobile", type="string",require=true,desc="手机号码 多个用英文逗号分割" )
     * @Apidoc\Returned("data", type="array", desc="发送成功")
     */
    public function send_work()
    {
        //设置执行这个任务
        for ($i=0;$i<100000;$i++){
            //队列名
            $queue = "queue";
            //数据
            $data['name'] = "pengking".$i;
            $data['mobile'] = "mobile".$i;
            $data['address'] = "address".$i;
            $data['uu_guid'] =  time();
            //任务名
            $job  = 'app\api\controller\sys\queue\Dojob@fire'.$i%16;
            Queue::push($job,$data,$queue);
        }

        return ok_msg('发布任务成功');
    }
    /**
     * @Apidoc\Title("添加公众号消息队列")
     * @Apidoc\Author("pengking")
     * @Apidoc\Returned("data", type="array", desc="发送成功")
     */
    public function pushMsgGzh()
    {
        //设置执行这个任务
        for ($i=0;$i<10;$i++){
            //队列名
            $queue = "MsgGzh";
            //数据
            $data['touser'] = "ozzpg0R__0kGydaB0ToqxB_H39iU";
            $data['template_id'] = "2M5nFxLcW0F3SRLU_mK0jANh5Tevg6Pg0HNx2hbVg40";
            $data['url'] = "https://mp.weixin.qq.com/s/bJpA5pYotVq98GyQsOSUpw";
            $data['data'] =  array(
                "first"=>array(
                    'vaule'=>"武汉新增4例无症状感染者的情况通报！江夏区部分区域划定为高、中风险区！"
                ),
                "keyword1"=>array(
                    'vaule'=> date('Y-m-d')
                ),
                "keyword2"=>array(
                    'vaule'=> "微邻里推文"
                ),
                "keyword3"=>array(
                    'vaule'=>"发送成功"
                ),
                "remark"=>array(
                    'vaule'=>"7月26日0—24时,武汉市新增4例无症状感染者,现将有关情况通报如下"
                ),
            );
           // halt($data);
            //任务名
            $job  = 'app\api\controller\sys\queue\Dojob@sendMsgGzh';
            Queue::push($job,$data,$queue);
        }

        return ok_msg('发布任务成功');
    }

    /**
     * @Apidoc\Title("发送公众号消息test")
     * @Apidoc\Author("pengking")
     * @Apidoc\Returned("data", type="array", desc="发送成功")
     */
    public function sendGzhtest(){
        $corpid = "ww301adb530ff09e85";
        $corpsecret="U4r3GJKsMvEF-kBo38-BTH9djNrbekl3zKzzwh2tdPk";
        $qywx_access_token = "https://qyapi.weixin.qq.com/cgi-bin/gettoken?corpid=ID&corpsecret=SECRET";
        $access_token = "59_TbpiwbUYOczZIj6fTNVtxA0EiSqA9My7_Uf1q2CGXpgNHI7chyNIrUfqZihDpXYza0AeCYiNNSIylNvU6VbopQ6GSJBUsKtjq57zFYxH_mqt1Ba_7PE2MpdzCggv1LKakYK5bhoRmI0ijjAiFQFhAEAKVK";
        $url = "https://api.weixin.qq.com/cgi-bin/message/template/send?access_token=".$access_token;
        $data['touser'] = "ozzpg0R__0kGydaB0ToqxB_H39iU";
        $data['template_id'] = "2M5nFxLcW0F3SRLU_mK0jANh5Tevg6Pg0HNx2hbVg40";
        $data['url'] = "https://mp.weixin.qq.com/s/bJpA5pYotVq98GyQsOSUpw";
        $data['data'] =  array(
            "first"=>"武汉新增4例无症状感染者的情况通报！江夏区部分区域划定为高、中风险区！",
            "keyword1" => date('Y-m-d'),
            "keyword2"=>"微邻里推文",
            "keyword3"=>"发送成功",
            "remark"=> "7月26日0—24时,武汉市新增4例无症状感染者,现将有关情况通报如下"
        );

        dump($data);
        $res = https_request_wx($url,$data,"json");
       halt($res);
    }

    /**
     * @Apidoc\Title("发送企业消息test")
     * @Apidoc\Author("pengking")
     * @Apidoc\Returned("data", type="array", desc="发送成功")
     */
    public function sendWorkest(){
        //设置执行这个任务
        for ($i=0;$i<1000;$i++){
            //队列名
            $queue = "MsgWork";
            $data = array(
                "touser"=>'pengking',
                "msgtype" => "text",
                "agentid" => 1000041,
                "text" => array(
                    "content" => "你的快递已到，请携带工卡前往前台领取。\n出发前可查看<a href=\"http://work.weixin.qq.com\">邮件中心视频实况</a>，聪明避开排队。"
                )
            );
            $job  = 'app\api\controller\sys\queue\Dojob@sendWorkMsg'.$i%14;
            Queue::push($job,$data,$queue);
    }
        return ok_msg('发布任务成功');
    }



}