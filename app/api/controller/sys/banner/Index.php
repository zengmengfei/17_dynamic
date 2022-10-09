<?php

namespace app\api\controller\sys\banner;
use app\common\controller\ApiBase;
use hg\apidoc\annotation as Apidoc;

/**
 * @Apidoc\Title("轮播图")
 * @Apidoc\Group("sys")
 */
class Index extends ApiBase{
    //不需要登录接口
    protected $noNeedLogin = ['uploadtest','get_list','get_one'];
    /**
     * @Apidoc\Title("获取轮播图列表")
     * @Apidoc\Author("pengking")
     * @Apidoc\Returned("data", type="array", desc="")
     */
    public  function  get_list(){
        $params = request()->param();
        $table = 'log_open_' . date('Y') . '_' . date('m');
        $list = $this->select_list($table,$params);
        if(empty($list->items())){
            return  err_msg('暂无数据');
        }
        return  ok_msg('ok',$list);
    }

    /**
     * @Apidoc\Title("获取轮播图列表")
     * @Apidoc\Author("pengking")
     * @Apidoc\Returned("data", type="array", desc="")
     */
    public  function  get_one(){
        $params = request()->param();
        $table = 'log_open_' . date('Y') . '_' . date('m');
        $info = $this->select_one($table,$params);
        if(empty($info)){
            return  err_msg('暂无数据');
        }
        return  ok_msg('ok',$info);
    }


}