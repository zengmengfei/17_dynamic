<?php

namespace app\api\controller\sys\queue;
use think\facade\Log;
use think\queue\Job;
use think\Facade\Db;

class Dojob
{
    //队列发送企业微信消息
    public function fire0(Job $job, $data)
    {
       $res =  Db::name('test5')->insert($data);
       if($res){
           $job->delete();
       }

        if ($job->attempts() > 3) {
            //执行失败写入错误日志
            Log::error('fire执行失败');
            //删除这个任务
            $job->delete();
        }

    }




    //队列发公众号消息
    public function sendMsgGzh(Job $job, $data)
    {
        $access_token = "59_TbpiwbUYOczZIj6fTNVtxA0EiSqA9My7_Uf1q2CGXpgNHI7chyNIrUfqZihDpXYza0AeCYiNNSIylNvU6VbopQ6GSJBUsKtjq57zFYxH_mqt1Ba_7PE2MpdzCggv1LKakYK5bhoRmI0ijjAiFQFhAEAKVK";
        $url = "https://api.weixin.qq.com/cgi-bin/message/template/send?access_token=".$access_token;

        $res = https_request_wx($url,$data,"json");
        if($res['errcode']==0){
            $job->delete();
        }
        Log::error(date('Y-m-d H:i:s').'----'.json_encode($res).'----'.json_encode($data)."-----".'-----'.$job->attempts());
        if($job->attempts()>2){
            $job->delete();
        }

//        if($res['errcode']==0){
//            //执行成功删除这个任务
//            $job->delete();
//        }elseif($job->attempts() > 3) {
//            Log::error(date('Y-m-d H:i:s').'--------sendMsgGzh执行失败');
//            //删除这个任务
//            $job->delete();
//        }


    }


    //队列发公众号消息
    public function sendMsgXcx(Job $job, $data)
    {
        if ($job->attempts() > 3) {
            //执行失败写入错误日志
            Log::error('sendMsgXcx执行失败');
            //删除这个任务
            $job->delete();
        } else {
            //执行成功删除这个任务
            $job->delete();
        }
    }
    //队列发企业微信消息
    public function sendWorkMsg0(Job $job, $data)
    {
        if($this->doJob($data)===0){
            $job->delete();
        }elseif ($job->attempts() > 2) {
            //执行失败写入错误日志
            Log::error('sendMsgXcx执行失败');
            //删除这个任务
        }
    }
    //队列发企业微信消息
    public function sendWorkMsg1(Job $job, $data)
    {
        if($this->doJob($data)===0){
            $job->delete();
        }elseif ($job->attempts() > 2) {
            //执行失败写入错误日志
            Log::error('sendMsgXcx执行失败');
            //删除这个任务
        }
    }
    //队列发企业微信消息
    public function sendWorkMsg2(Job $job, $data)
    {
        if($this->doJob($data)===0){
            $job->delete();
        }elseif ($job->attempts() > 2) {
            //执行失败写入错误日志
            Log::error('sendMsgXcx执行失败');
            //删除这个任务
        }
    }
    //队列发企业微信消息
    public function sendWorkMsg3(Job $job, $data)
    {
        if($this->doJob($data)===0){
            $job->delete();
        }elseif ($job->attempts() > 2) {
            //执行失败写入错误日志
            Log::error('sendMsgXcx执行失败');
            //删除这个任务
        }
    }
    //队列发企业微信消息
    public function sendWorkMsg4(Job $job, $data)
    {
        if($this->doJob($data)===0){
            $job->delete();
        }elseif ($job->attempts() > 2) {
            //执行失败写入错误日志
            Log::error('sendMsgXcx执行失败');
            //删除这个任务
        }
    }
    //队列发企业微信消息
    public function sendWorkMsg5(Job $job, $data)
    {
        if($this->doJob($data)===0){
            $job->delete();
        }elseif ($job->attempts() > 2) {
            //执行失败写入错误日志
            Log::error('sendMsgXcx执行失败');
            //删除这个任务
        }
    }
    //队列发企业微信消息
    public function sendWorkMsg6(Job $job, $data)
    {
        if($this->doJob($data)===0){
            $job->delete();
        }elseif ($job->attempts() > 2) {
            //执行失败写入错误日志
            Log::error('sendMsgXcx执行失败');
            //删除这个任务
        }
    }
    //队列发企业微信消息
    public function sendWorkMsg7(Job $job, $data)
    {
        if($this->doJob($data)===0){
            $job->delete();
        }elseif ($job->attempts() > 2) {
            //执行失败写入错误日志
            Log::error('sendMsgXcx执行失败');
            //删除这个任务
        }
    }
    //队列发企业微信消息
    public function sendWorkMsg8(Job $job, $data)
    {
        if($this->doJob($data)===0){
            $job->delete();
        }elseif ($job->attempts() > 2) {
            //执行失败写入错误日志
            Log::error('sendMsgXcx执行失败');
            //删除这个任务
        }
    }
    //队列发企业微信消息
    public function sendWorkMsg9(Job $job, $data)
    {
        if($this->doJob($data)===0){
            $job->delete();
        }elseif ($job->attempts() > 2) {
            //执行失败写入错误日志
            Log::error('sendMsgXcx执行失败');
            //删除这个任务
        }
    }
    //队列发企业微信消息
    public function sendWorkMsg10(Job $job, $data)
    {
        if($this->doJob($data)===0){
            $job->delete();
        }elseif ($job->attempts() > 2) {
            //执行失败写入错误日志
            Log::error('sendMsgXcx执行失败');
            //删除这个任务
        }
    }
    //队列发企业微信消息
    public function sendWorkMsg11(Job $job, $data)
    {
        if($this->doJob($data)===0){
            $job->delete();
        }elseif ($job->attempts() > 2) {
            //执行失败写入错误日志
            Log::error('sendMsgXcx执行失败');
            //删除这个任务
        }
    }
    //队列发企业微信消息
    public function sendWorkMsg12(Job $job, $data)
    {
        if($this->doJob($data)===0){
            $job->delete();
        }elseif ($job->attempts() > 2) {
            //执行失败写入错误日志
            Log::error('sendMsgXcx执行失败');
            //删除这个任务
        }
    }
    //队列发企业微信消息
    public function sendWorkMsg13(Job $job, $data)
    {
        if($this->doJob($data)===0){
            $job->delete();
        }elseif ($job->attempts() > 2) {
            //执行失败写入错误日志
            Log::error('sendMsgXcx执行失败');
            //删除这个任务
        }
    }

    private function doJob($data)
    {
        $access_token = cache('qywx_AgentId_1000041');
        if(empty($access_token)){
            $corpid = "ww301adb530ff09e85";
            $corpsecret="U4r3GJKsMvEF-kBo38-BTH9djNrbekl3zKzzwh2tdPk";
            $url = "https://qyapi.weixin.qq.com/cgi-bin/gettoken?corpid={$corpid}&corpsecret={$corpsecret}";
            $res = https_request_wx($url);
            if($res['errcode']==0){
                cache('qywx_AgentId_1000041',$res['access_token'],7200);
                $access_token = cache('qywx_AgentId_1000041');
            }
        }
        $send_url = "https://qyapi.weixin.qq.com/cgi-bin/message/send?access_token=".$access_token;
        $ress =  https_request_wx($send_url,$data,"json");
        return $ress['errcode'];
    }
}