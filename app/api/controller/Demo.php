<?php

namespace app\api\controller;
use app\common\controller\ApiBase;
use think\Validate;
use think\facade\Db;
use hg\apidoc\annotation as Apidoc;


/**
 * @Apidoc\Title("前端测试接口")
 * @Apidoc\Group ("test")
 */
class Demo extends ApiBase
{
     //不需要登录接口
     protected $noNeedLogin = ['*'];
     /**
     * @Apidoc\Title("获取用户信息不需要登录")
     * @Apidoc\Author("pengking")
     * @Apidoc\Param("guid", type="string",require=true,desc="用户id" )
     * @Apidoc\Returned("data", type="array", desc="用户信息")
     */

     public  function  get_guid_info(){
         //数据验证
         $validate = new Validate;
         $validate->rule([
             'guid' => 'require',
         ]);
         $validate->message([
             'guid.require' => '账号不能为空',
         ]);
         $params = request()->param();
         if (!$validate->check($params)) {
             return err_msg($validate->getError());
         }
         $info = Db::name('tq_user')->where('guid',$params['guid'])->find();
         if(empty($info)){
             return  err_msg('获取失败！');
         }else{
             return  ok_msg('获取成功！',$info);
         }
     }

    /**
     * @Apidoc\Title("获取用户信息需要登录")
     * @Apidoc\Author("pengking")
     * @Apidoc\Header(ref="api_login")
     * @Apidoc\Param("mobile", type="string",require=true,desc="用户手机号" )
     * @Apidoc\Returned("data", type="array", desc="用户信息")
     */

    public  function  get_guid_info2(){
        //数据验证
        $validate = new Validate;
        $validate->rule([
            'mobile' => 'require',
        ]);
        $validate->message([
            'mobile.require' => '手机号不能为空',
        ]);
        $params = request()->param();
        if (!$validate->check($params)) {
            return err_msg($validate->getError());
        }
        $info = Db::name('tq_user')->where('mobile',$params['mobile'])->find();
        if(empty($info)){
            return  err_msg('获取失败！');
        }else{
            return  ok_msg('获取成功！',$info);
        }
    }

    /**
     * @Apidoc\Title("获取配置信息")
     * @Apidoc\Author("pengking")
     * @Apidoc\Param("config_id", type="string",require=true,desc="配置id" )
     * @Apidoc\Param("config_name", type="string",require=true,desc="配置名称" )
     * @Apidoc\Returned("data", type="array", desc="用户信息")
     */
    public function get_config()
    {
        $params = request()->param();
        $config_site_name = get_db_config_data($params['config_id'],$params['config_name']);
        return  err_msg('ok',$config_site_name);
    }

    public function get_sys_region1(){

        return ok_msg('操作成功',get_son_code(3304));
    }

    public  function  get_join_select(){
        $table = "tq_user";
        $where =[];
        $onfield = array('political_id','political_type_id');
        $res = $this->rel_select_list($table,$where,'','','',$onfield);
        if(!empty($res->items())){
            return ok_msg('操作成功',$res);
        }else{
            return  err_msg('操作失败',$res);
        }
    }

    public  function  get_join_select_one(){
        $table = "tq_user";
        $where['guid'] ="4c1b951b-0630-4689-93da-ac3bbae0cf53";
        $onfield = array('political_id','political_type_id');
        $res = $this->rel_select_one($table,$where,'','',$onfield);
        if(!empty($res)){
            return ok_msg('操作成功',$res);
        }else{
            return  err_msg('操作失败');
        }
    }

    public  function  get_api_ins_all(){
        $table ="tq_user";
        $params=[];
        $res =$this->api_ins($table,$params ,true);
        if($res){
            return  ok_msg('操作成功',$res);
        }else{
            return  err_msg('操作失败');
        }

    }

    public  function  test_url(){
        $image1 = "/images/user/20220627/65a94898986b0974736.jpg";
        echo get_image_url($image1);
        echo "<br/>";
        $image2 = "http://192.168.2.188:8002/uploads/images/user/20220627/65a94898986b0974736.jpg";
        echo get_image_url($image2);
    }






}