<?php

namespace app\api\controller\sys\modular;
use app\common\controller\ApiBase;
use hg\apidoc\annotation as Apidoc;
/**
 * @Apidoc\Title("模块控制")
 * @Apidoc\Group("sys")
 */
class Index extends ApiBase
{
    //不需要登录接口
    protected $noNeedLogin = [];
    /**
     * @Apidoc\Title("获取显示应用")
     * @Apidoc\Author("pengking")
     * @Apidoc\Header(ref="api_login")
     * @Apidoc\Returned (ref="pagingParam")
     */
    public  function  get_app_list(){
        $table = "sys_modular";
        $params = request()->param();
        $list = $this->select_list($table,$params,'','',true);
        if(empty($list->items())){
            return  err_msg('暂无数据');
        }
        return  ok_msg('ok',$list);
    }


    /**
     * @Apidoc\Title("显示应用")
     * @Apidoc\Author("pengking")
     * @Apidoc\Header(ref="api_login")
     * @Apidoc\Param("par_name", type="string",require=false,desc="父级名称" )
     * @Apidoc\Param("name", type="string",require=false,desc="名称" )
     * @Apidoc\Param("image", type="string",require=false,desc="图标" )
     * @Apidoc\Param("url", type="string",require=false,desc="地址" )
     * @Apidoc\Param("code", type="string",require=false,desc="可见范围" )
     * @Apidoc\Returned (ref="pagingParam")
     */
    public  function  add_app_list(){
        $table = "sys_modular";
        $params = request()->param();
        $res = $this->api_ins($table,$params);
        if(empty($res)){
            return  err_msg('暂无数据');
        }
        return  ok_msg('ok',$res);
    }



}