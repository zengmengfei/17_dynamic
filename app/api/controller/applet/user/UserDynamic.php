<?php

namespace app\api\controller\applet\user;

use app\api\model\user\Dynamic;
use app\api\model\user\DynamicComment;
use app\api\model\user\DynamicThumb;
use app\api\model\user\WxUser;
use app\common\controller\ApiBase;
use think\Validate;
use hg\apidoc\annotation as Apidoc;
/**
 * @Apidoc\Title("用户动态接口")
 * @Apidoc\Group ("user")
 */
class UserDynamic extends ApiBase
{
    //不需要登录接口
    protected $noNeedLogin = ['*'];

    public $params;
    public $wxUser;
    public $userInfo;

    public function initialize()
    {
        $params = request()->param();
        $this->params = $params;
        $this->wxUser = new WxUser();
    }

    /**
     * @Apidoc\Title("动态列表")
     * @Apidoc\Author("pengking")
     * @Apidoc\Method("GET")
     * @Apidoc\Param("guid", type="string",require=true,desc="用户唯一值" )
     * @Apidoc\Param("type", type="string",require=false,desc="查看类型" )
     * @Apidoc\Param("page", type="string",require=true,desc="分页" )
     * @Apidoc\Param("count", type="string",require=true,desc="每页条数" )
     * @Apidoc\Returned("data", type="json", desc="用户数据")
     */
    public function dynamic_list(){
        $dynamicModel = new Dynamic();
        $list = $dynamicModel->dynamicList($this->params);
        return ok_msg('查询成功', $list);
    }

    /**
     * @Apidoc\Title("我的动态")
     * @Apidoc\Author("pengking")
     * @Apidoc\Method("GET")
     * @Apidoc\Param("guid", type="string",require=true,desc="用户唯一值" )
     * @Apidoc\Param("page", type="string",require=true,desc="分页" )
     * @Apidoc\Param("count", type="string",require=true,desc="每页条数" )
     * @Apidoc\Returned("data", type="json", desc="用户数据")
     */
    public function my_dynamic_list(){
        $dynamicModel = new Dynamic();
        $list = $dynamicModel->myDynamicList($this->params);
        return ok_msg('查询成功', $list);
    }

    /**
     * @Apidoc\Title("动态详情")
     * @Apidoc\Author("pengking")
     * @Apidoc\Method("GET")
     * @Apidoc\Param("guid", type="string",require=true,desc="用户唯一值" )
     * @Apidoc\Param("dynamic_sn", type="string",require=true,desc="动态唯一sn" )
     * @Apidoc\Returned("data", type="json", desc="用户数据")
     */
    public function dynamic_detail(){
        $dynamicModel = new Dynamic();
        $detail = $dynamicModel->dynamicDetail($this->params);
        return $detail?ok_msg('查询成功',  $detail):err_msg('数据不存在');
    }

    /**
     * @Apidoc\Title("添加动态")
     * @Apidoc\Author("pengking")
     * @Apidoc\Method("POST")
     * @Apidoc\Param("guid", type="string",require=true,desc="用户唯一值" )
     * @Apidoc\Param("title", type="string",require=true,desc="动态标题" )
     * @Apidoc\Param("status", type="int",require=true,desc="动态状态" )
     * @Apidoc\Param("imgs", type="string",require=false,desc="图片" )
     * @Apidoc\Param("video_url", type="string",require=false,desc="视频地址" )
     * @Apidoc\Returned("data", type="json", desc="用户数据")
     */
    public function add_dynamic(){
        //数据验证
        $validate = new Validate;
        $validate->rule([
            'title' => 'require',
            'status' => 'require',
        ]);
        $validate->message([
            'title.require' => '动态标题不能为空',
            'status.require' => '动态状态不能为空',
        ]);
        if (!$validate->check($this->params)) {
            base_msg($validate->getError());
        }
        $dynamicModel = new Dynamic();
        $res = $dynamicModel->addDynamic($this->params);
        return $res?ok_msg('操作成功', $this->params):err_msg('操作失败');
    }

    /**
     * @Apidoc\Title("用户发布评论")
     * @Apidoc\Author("pengking")
     * @Apidoc\Method("POST")
     * @Apidoc\Param("guid", type="string",require=true,desc="用户唯一值" )
     * @Apidoc\Param("dynamic_sn", type="string",require=true,desc="动态唯一标识" )
     * @Apidoc\Param("content", type="string",require=true,desc="评论内容" )
     * @Apidoc\Param("parent_id", type="int",require=false,desc="上级评论id" )
     * @Apidoc\Param("top_id", type="int",require=false,desc="顶级评论id" )
     * @Apidoc\Returned("data", type="json", desc="用户数据")
     */
    public function add_dynamic_comment(){
        //数据验证
        $validate = new Validate;
        $validate->rule([
            'dynamic_sn' => 'require',
            'content' => 'require',
        ]);
        $validate->message([
            'dynamic_sn.require' => '动态唯一标识不能为空',
            'content.require' => '评论内容不能为空',
        ]);
        if (!$validate->check($this->params)) {
            base_msg($validate->getError());
        }
        $commentModel = new DynamicComment();
        $res = $commentModel->addDynamicComment($this->params);
        return $res?ok_msg('操作成功', $this->params):err_msg('操作失败');
    }

    /**
     * @Apidoc\Title("获取用户评论详情")
     * @Apidoc\Author("pengking")
     * @Apidoc\Method("GET")
     * @Apidoc\Param("dynamic_sn", type="string",require=true,desc="动态唯一标识" )
     * @Apidoc\Returned("data", type="json", desc="用户数据")
     */
    public function get_dynamic_comment(){
        $commentModel = new DynamicComment();
        if (empty($this->params['dynamic_sn'])) return err_msg('动态唯一标识未传递');
        $list = $commentModel->getDynamicComment($this->params);
        return ok_msg('查询成功', $list);
    }

    /**
     * @Apidoc\Title("用户点赞")
     * @Apidoc\Author("pengking")
     * @Apidoc\Method("POST")
     * @Apidoc\Param("guid", type="string",require=true,desc="用户唯一值" )
     * @Apidoc\Param("dynamic_sn", type="string",require=true,desc="动态sn" )
     * @Apidoc\Returned("data", type="json", desc="用户数据")
     */
    public function change_thumbs(){
        if (empty($this->params['dynamic_sn'])) return err_msg('动态唯一标识未传递');
        $thumbModel = new DynamicThumb();
        $res = $thumbModel->changeThumbs($this->userInfo['guid'], $this->params['dynamic_sn']);
        return $res?ok_msg('操作成功', $this->params):err_msg('操作失败');
    }


    /**
     * @Apidoc\Title("动态分享接口")
     * @Apidoc\Author("pengking")
     * @Apidoc\Method("POST")
     * @Apidoc\Param("dynamic_sn", type="string",require=true,desc="动态sn" )
     * @Apidoc\Returned("data", type="json", desc="用户数据")
     */
    public function dynamic_share(){
        if (empty($this->params['dynamic_sn'])) return err_msg('动态唯一标识未传递');
        $dynamicModel = new Dynamic();
        $res = $dynamicModel->dynamicShare($this->params);
        return $res?ok_msg('操作成功', $this->params):err_msg('操作失败');
    }

}