<?php


namespace app\common\controller;
use hg\apidoc\annotation\Param;
use hg\apidoc\annotation\Returned;
use hg\apidoc\annotation\Header;

class Definitions
{
    /**
     * 获取分页数据列表的参数
     * @Param("page",type="int",require=true,default="1",desc="查询页数")
     * @Param("limit",type="int",require=true,default="10",desc="查询条数")
     * @Returned("total", type="int", desc="总条数")
     */
    public function pagingParam(){

    }

    /**
     * 返回字典数据
     * @Returned("id",type="int",desc="唯一id")
     * @Returned("name",type="string",desc="字典名")
     * @Returned("value",type="string",desc="字典值")
     */
    public function dictionary(){

    }

    /**
     * @Header("OpenAuthorization",type="string",require=true,desc="身份票据")
     * @Header("AppId",type="string",require=true,desc="请求账号")
     */
    public function open_auth(){

    }


    /**
     * @Header("ApiAuthorization",type="string",require=true,desc="身份票据")
     * @Header("guid",type="string",require=true,desc="用户唯一标识")
     * @Header("Origin",type="string",require=true,desc="请求来源域名")
     */
    public function api_login(){

    }



}