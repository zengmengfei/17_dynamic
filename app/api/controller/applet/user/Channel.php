<?php

namespace app\api\controller\applet\user;

use app\api\model\channel\ChannelUser;
use app\common\controller\ApiBase;
use app\api\model\channel\Channel as channelModel;
use think\Validate;
use hg\apidoc\annotation as Apidoc;
/**
 * @Apidoc\Title("消息频道")
 * @Apidoc\Group ("user")
 */
class Channel extends ApiBase
{

    public $params;

    public function initialize()
    {
        parent::initialize();
        $params = request()->param();
        $this->params = $params;
    }

    /**
     * @Apidoc\Title("查看消息页列表")
     * @Apidoc\Author("pengking")
     * @Apidoc\Method("GET")
     * @Apidoc\Param("guid", type="string",require=true,desc="用户唯一值" )
     * @Apidoc\Returned("data", type="json", desc="用户数据")
     */
    public function get_channel_list(){
        $channelUser = new ChannelUser();
        $list = $channelUser->getChannelList($this->userInfo);
        return  ok_msg('ok', $list);
    }

    /**
     * @Apidoc\Title("查看频道消息详情")
     * @Apidoc\Author("pengking")
     * @Apidoc\Method("GET")
     * @Apidoc\Param("guid", type="string",require=true,desc="用户唯一值" )
     * @Apidoc\Param("channel_sn", type="string",require=true,desc="消息频道sn" )
     * @Apidoc\Returned("data", type="json", desc="用户数据")
     */
    public function get_channel_messages(){
        //数据验证
        $validate = new Validate;
        $validate->rule([
            'channel_sn' => 'require',
        ]);
        $validate->message([
            'channel_sn.require' => '消息频道sn不能为空',
        ]);
        if (!$validate->check($this->params)) {
            base_msg($validate->getError());
        }
        $channelUser = new ChannelUser();
        $list = $channelUser->getChannelMessages($this->params, $this->userInfo);
        return  ok_msg('ok', $list);
    }

    /**
     * @Apidoc\Title("发送频道消息")
     * @Apidoc\Author("pengking")
     * @Apidoc\Method("POST")
     * @Apidoc\Param("guid", type="string",require=true,desc="用户唯一值" )
     * @Apidoc\Param("channel_sn", type="string",require=true,desc="消息频道sn" )
     * @Apidoc\Param("type", type="int",require=true,desc="消息类型" )
     * @Apidoc\Param("content", type="string",require=true,desc="消息内容" )
     * @Apidoc\Returned("data", type="json", desc="用户数据")
     */
    public function add_channel_messages(){
        //数据验证
        $validate = new Validate;
        $validate->rule([
            'channel_sn' => 'require',
            'content' => 'require',
        ]);
        $validate->message([
            'channel_sn.require' => '消息频道sn不能为空',
            'content.require' => '消息内容不能为空',
        ]);
        if (!$validate->check($this->params)) {
           base_msg($validate->getError());
        }
        $channelUser = new ChannelUser();
        $res = $channelUser->addChannelMessages($this->params, $this->userInfo);
        return  $res?ok_msg('发送成功'):err_msg('发送失败');
    }

}