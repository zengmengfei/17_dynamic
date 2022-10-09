<?php

namespace app\api\controller\sys\cms;
use app\common\controller\ApiBase;
use hg\apidoc\annotation as Apidoc;
use think\Exception;
use think\facade\Event;
use think\facade\Db;
use think\Validate;

/**
 * @Apidoc\Title("内容管理")
 * @Apidoc\Group("sys")
 */
class Index extends ApiBase
{
    //不需要登录接口
    protected $noNeedLogin = ['get_cms_type','get_cms_info'];

    /**
     * @Apidoc\Title("获取文章类型")
     * @Apidoc\Author("pengking")
     * @Apidoc\Header(ref="api_login")
     * @Apidoc\Param(ref="pagingParam")
     * @Apidoc\Returned (ref="pagingParam")
     */
    public  function get_cms_type(){
        $params = request()->param();
        $table = 'sys_cms_type';
        $list = $this->select_list($table,$params);
        if(empty($list->items())){
            return  err_msg('暂无数据');
        }
        return  ok_msg('ok',$list);
    }

    /**
     * @Apidoc\Title("新增或者编辑文章类型")
     * @Apidoc\Author("pengking")
     * @Apidoc\Header(ref="api_login")
     * @Apidoc\Param("id", type="string",require=false,desc="id为空新增 不为空编辑" )
     * @Apidoc\Param("title", type="string",require=true,desc="名称" )
     * @Apidoc\Param("image", type="string",require=false,desc="标题图标" )
     */
    public function edit_cms_type(){
        $params = request()->param();
        $table = 'sys_cms_type';
        if(empty($params)){
            return  err_msg('参数错误');
        }
        if(empty($params['id'])){

            $res = $this->api_ins($table,$params);
            if($res){
                return  ok_msg('新增成功',$res);
            }else{
                return  err_msg('新增失败');
            }
        }else{
            $res = $this->api_upd($table,$params);
            if($res){
                return  ok_msg('更新成功');
            }else{
                return  err_msg('更新失败');
            }
        }

    }

    /**
     * @Apidoc\Title("获取文章列表")
     * @Apidoc\Author("pengking")
     * @Apidoc\Header(ref="api_login")
     * @Apidoc\Header(ref="api_login")
     * @Apidoc\Param("cms_type", type="int",require=false,desc="文章分类id 空查全部 传入根据参数查" )
     * @Apidoc\Param(ref="pagingParam")
     * @Apidoc\Returned (ref="pagingParam")
     */
    public  function get_cms_list(){
        $table = 'sys_cms_list';
        $params = request()->param();
        $order['sort'] = 'desc';
        $field = "id,guid,create_time,title,web_url,sort,click_num,likes_num,comment_num";
        $list = $this->select_list($table,$params,$order,$field);
        if(empty($list->items())){
            return  err_msg('暂无数据');
        }
        return  ok_msg('ok',$list);
    }

    /**
     * @Apidoc\Title("新增或者编辑文章")
     * @Apidoc\Author("pengking")
     * @Apidoc\Header(ref="api_login")
     * @Apidoc\Header(ref="api_login")
     * @Apidoc\Param("id", type="string",require=false,desc="id为空新增 不为空编辑" )
     * @Apidoc\Param("cms_type", type="int",require=true,desc="文章分类id" )
     * @Apidoc\Param("title", type="string",require=true,desc="名称" )
     * @Apidoc\Param("image", type="string",require=false,desc="图片" )
     * @Apidoc\Param("images", type="string",require=false,desc="图组" )
     * @Apidoc\Param("content", type="string",require=false,desc="内容" )
     * @Apidoc\Param("author", type="string",require=false,desc="作者" )
     * @Apidoc\Param("web_url", type="string",require=false,desc="外链" )
     * @Apidoc\Param("seotitle", type="string",require=false,desc="SEO标题" )
     * @Apidoc\Param("keywords", type="string",require=false,desc="关键词" )
     * @Apidoc\Param("description", type="string",require=false,desc="简介" )
     * @Apidoc\Param("sort", type="string",require=false,desc="排序 数字越大越前" )
     */
    public function edit_cms_list(){
        $params = request()->param();
        $table = 'sys_cms_list';
        if(empty($params)){
            return  err_msg('参数错误');
        }
        if(empty($params['id'])){
            $res = $this->api_ins($table,$params);
            if($res){
                return  ok_msg('新增成功',$res);
            }else{
                return  err_msg('新增失败');
            }
        }else{
            $res = $this->api_upd($table,$params);
            if($res){
                return  ok_msg('更新成功');
            }else{
                return  err_msg('更新失败');
            }
        }
    }

    /**
     * @Apidoc\Title("获取文章详情")
     * @Apidoc\Author("pengking")
     * @Apidoc\Header(ref="api_login")
     * @Apidoc\Header(ref="api_login")
     * @Apidoc\Param("guid", type="int",require=false,desc="guid" )
     */
    public  function get_cms_info(){
        $table = 'sys_cms_list';
        $params = request()->param();
        if(empty($params)){
            return  err_msg('请输入参数');
        }
        $info = $this->select_one($table,$params,'',false);
        if(!$info){
            return  err_msg('暂无数据');
        }
        //事件更新阅读量
        event('CmsClick',$info);
        return  ok_msg('ok',$info);
    }

    /**
     * @Apidoc\Title("文章点赞")
     * @Apidoc\Author("pengking")
     * @Apidoc\Header(ref="api_login")
     * @Apidoc\Header(ref="api_login")
     * @Apidoc\Param("cms_id", type="int",require=false,desc="文章id" )
     */
    public  function get_cms_info_liks(){
        $table = 'sys_cms_list_likes';
        //数据验证
        $validate = new Validate;
        $validate->rule([
            'cms_id' => 'require',
        ]);
        $validate->message([
            'cms_id.require' => '账号不能为空',
        ]);
        $params = request()->param();
        if (!$validate->check($params)) {
            return err_msg($validate->getError());
        }
        $params['uu_guid'] = request()->header('guid','');
        //查询是是否点赞
        $info = $this->select_one($table,$params);
        //未点赞
        if(empty($info)){
            $params['likes'] = 1;
            $this->api_ins($table,$params);
            event('CmsClickLike',$params);
            return  ok_msg('点赞成功');
        }else{
            //已点赞 去取点赞
            if($info['likes']==1){
                $params['likes'] = 2;
            }else{
                //已点赞 去取点赞
                $params['likes'] = 1;
            }
            $params['id'] = $info['id'];
            $info = $this->api_upd($table,$params);
            if(!$info){
                return  err_msg('更新失败');
            }else{
                //事件更新点击量
                event('CmsClickLike',$params);
                return  ok_msg( $params['likes']===1 ?"点赞成功":"取消点赞成功");
            }
        }
    }

    /**
     * @Apidoc\Title("是否点赞")
     * @Apidoc\Author("pengking")
     * @Apidoc\Header(ref="api_login")
     * @Apidoc\Header(ref="api_login")
     * @Apidoc\Param("cms_id", type="int",require=false,desc="文章id" )
     */
    public  function is_cms_info_liks(){
        //数据验证
        $validate = new Validate;
        $validate->rule([
            'cms_id' => 'require',
        ]);
        $validate->message([
            'cms_id.require' => '账号不能为空',
        ]);
        $params = request()->param();
        if (!$validate->check($params)) {
            return err_msg($validate->getError());
        }
        $params['uu_guid']  = request()->header('guid','');
        $table = 'sys_cms_list_likes';
        $params['likes']  = 1;
        $info = $this->select_one($table,$params,'',false);
        if(!$info){
            return  err_msg('暂无数据');
        }
        return  ok_msg('ok',$info);
    }

    /**
     * @Apidoc\Title("评论")
     * @Apidoc\Author("pengking")
     * @Apidoc\Header(ref="api_login")
     * @Apidoc\Header(ref="api_login")
     * @Apidoc\Param("cms_id", type="int",require=true,desc="文章id" )
     * @Apidoc\Param("content", type="int",require=true,desc="评论内容" )
     * @Apidoc\Param("parent_id", type="int",require=false,default=0,desc="父级评论id" )
     */
    public  function cms_info_comment(){
        //数据验证
        $validate = new Validate;
        $validate->rule([
            'cms_id' => 'require',
            'content' => 'require',
        ]);
        $validate->message([
            'cms_id.require' => 'id不能为空',
            'content.require' => '评论类容不能为空',
        ]);
        $params = request()->param();
        if (!$validate->check($params)) {
            return err_msg($validate->getError());
        }
        $params['uu_guid'] = request()->header('guid','');
        $table ="sys_cms_comment";
        $res = $this->api_ins($table,$params);
        if($res){
            return  ok_msg('评论成功',$res);
        }else{
            return  err_msg('评论失败');
        }
    }



    /**
     * @Apidoc\Title("获取评论列表")
     * @Apidoc\Author("pengking")
     * @Apidoc\Header(ref="api_login")
     * @Apidoc\Header(ref="api_login")
     * @Apidoc\Param("cms_id", type="int",require=true,desc="文章id" )
     * @Apidoc\Param(ref="pagingParam")
     * @Apidoc\Returned (ref="pagingParam")
     */
    public  function get_cms_comment_list(){
        //数据验证
        $validate = new Validate;
        $validate->rule([
            'cms_id' => 'require',
        ]);
        $validate->message([
            'cms_id.require' => 'id不能为空',
        ]);
        $params = request()->param();
        if (!$validate->check($params)) {
            return err_msg($validate->getError());
        }
        $table ="sys_cms_comment";

        //$list = $this->select_list($table,$params);
        $list =  Db::name($table)
            ->where('cms_id',$params['cms_id'])
            ->where('mark',1)
            ->filter(function($db) {
                $db['create_time'] = date('Y-m-d H:i:s',$db['create_time']);
                if(!empty($db['update_time'])){
                    $db['update_time'] = date('Y-m-d H:i:s',$db['update_time']);
                }
                return $db;
            })
            ->select()->toArray();

        if($list){
            $list = $this->get_childs_comment($list);
            return  ok_msg('成功',$list);
        }else{
            return  err_msg('失败');
        }
    }


    //评论获取无限极分类数据
    public function get_childs_comment($comments, $parent_id = 0, $level = 0)
    {
        $new_comments = [];
        foreach ($comments as $key => $val) {
            if ($val['parent_id'] == $parent_id) {
                $val['level'] = $level;
                $val['childs'] = $this->get_childs_comment($comments, $val['id'], $level + 1);
                $new_comments[] = $val;
            }
        }
        return $new_comments;
    }

}