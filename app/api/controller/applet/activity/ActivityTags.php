<?php

namespace app\api\controller\applet\activity;

use app\api\model\activity\Tags;
use app\common\controller\ApiBase;
use think\Validate;
use hg\apidoc\annotation as Apidoc;
/**
 * @Apidoc\Title("活动标签相关接口")
 * @Apidoc\Group ("user")
 */
class ActivityTags extends ApiBase
{

    public $params;

    public function initialize()
    {
        parent::initialize();
        $params = request()->param();
        $this->params = $params;
    }

    /**
     * @Apidoc\Title("活动用户标签列表")
     * @Apidoc\Author("pengking")
     * @Apidoc\Method("GET")
     * @Apidoc\Param("guid", type="string",require=true,desc="用户唯一值" )
     * @Apidoc\Returned("data", type="json", desc="用户数据")
     */
    public function get_tags() {
        $tags = new Tags();
        $list = $tags->getTags($this->params);
        return ok_msg('操作成功', $list);
    }

    /**
     * @Apidoc\Title("用户添加标签")
     * @Apidoc\Author("pengking")
     * @Apidoc\Method("POST")
     * @Apidoc\Param("guid", type="string",require=true,desc="用户唯一值" )
     * @Apidoc\Param("tag_name", type="string",require=true,desc="标签名" )
     * @Apidoc\Returned("data", type="json", desc="用户数据")
     */
    public function add_tag() {
        if (empty(trim($this->params['tag_name'])))  return err_msg('标签名不可为空');
        $tags = new Tags();
        $res = $tags->addTag($this->params);
        return ok_msg('添加成功', $res);
    }

    /**
     * @Apidoc\Title("用户删除标签")
     * @Apidoc\Author("pengking")
     * @Apidoc\Method("POST")
     * @Apidoc\Param("guid", type="string",require=true,desc="用户唯一值" )
     * @Apidoc\Param("id", type="string",require=true,desc="标签id" )
     * @Apidoc\Returned("data", type="json", desc="用户数据")
     */
    public function del_tag() {
        $tags = new Tags();
        $res = $tags->delTag($this->params);
        return $res?ok_msg('删除成功'):err_msg('删除失败');
    }


}