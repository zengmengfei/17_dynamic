<?php
namespace app\api\controller;
use app\common\controller\ApiBase;
use app\Request;
use app\api\services\SysKeyworlds as SysKeyworldsService;
use app\api\validate\SysKeyworlds as SysKeyworldsValidate;
use hg\apidoc\annotation as Apidoc;
use think\App;
/**
 * @Apidoc\Title("关键词分析")
 * @Apidoc\Group("test")
 */
class SysKeyworlds extends ApiBase
{
    //不需要登录接口
   protected $noNeedLogin = [];
   protected $service;
   protected $validate;
   public function initialize()
    {
        parent::initialize(); // TODO: Change the autogenerated stub
        $this->service = new SysKeyworldsService();
        $this->validate = new SysKeyworldsValidate();
}
/**
* @Apidoc\Title("查询分页列表")
* @Apidoc\Author("pengking")
* @Apidoc\Header(ref="api_login")
* @Apidoc\Param(ref="pagingParam")
* @Apidoc\Returned("data",type="array",ref="app\api\model\SysKeyworlds\getList",withoutField="create_time,update_time,mark,")
*/
public function getPageList(Request $request){
    $page = $request->param("page",0);
    $limit = $request->param("size",10);
    $where = [];
    $res = $this->service->getPageList($page,$limit,$where);
    if(empty($res['data'])){
        return err_msg("暂无数据");
    }
    return ok_msg("查询成功",$res);
}
/**
* @Apidoc\Title("根据主键查询明细")
* @Apidoc\Author("pengking")
* @Apidoc\Header(ref="api_login")
* @Apidoc\Param("id",type="int" , desc="唯一id")
* @Apidoc\Returned(ref="app\api\model\SysKeyworlds\getInfoById",withoutField="create_time,update_time,mark,")
*/
public function detail(Request $request){
    $params = $request->param();
        if(!empty($params['id'])){
        $res = $this->service->getInfoById($params['id']);
    }elseif(!empty($params['guid'])){
        $res = $this->service->getInfoByGuid($params['guid']);
    }else{
        return err_msg('查询条件错误');
    }
    if($res){
        return ok_msg('查询成功',$res);
    }else{
        return err_msg('暂无数据',$res);
    }
}
/**
* @Apidoc\Title("新增")
* @Apidoc\Author("pengking")
* @Apidoc\Header(ref="api_login")
* @Apidoc\Method("POST")
* @Apidoc\Param (ref="app\api\model\SysKeyworlds\getInfoById",withoutField="id,guid,create_time,update_time,mark,")
* @Apidoc\Returned (ref="app\api\model\SysKeyworlds\getInfoById")
*/
public function add(Request $request){
    if (!empty($this->validate)){
        $this->validate->goCheck('add');
    }
        $params = $request->post();
    try{
        $res = $this->service->add($params);
    }catch (\Exception $e){
        return err_msg('添加失败',$e->getMessage());
    }
    if($res){
        return ok_msg('添加成功',$res);
    }else{
        return err_msg('添加失败',$res);
    }
}
/**
* @Apidoc\Title("编辑")
* @Apidoc\Author("pengking")
* @Apidoc\Header(ref="api_login")
* @Apidoc\Method("PUT")
* @Apidoc\Param (ref="app\api\model\SysKeyworlds\getInfoById",withoutField="create_time,update_time,mark,")
* @Apidoc\Returned (ref="app\api\model\SysKeyworlds\getInfoById")
*/
public function edit(Request $request){
    if (!empty($this->validate)){
        $this->validate->goCheck('edit');
    }
        $params = $request->post();
    try{
        $res = $this->service->update($params);
    }catch (\Exception $e){
        return err_msg('编辑失败',$e->getMessage());
    }
    if($res){
        return ok_msg('编辑成功',$res);
    }else{
        return err_msg('编辑失败',$res);
    }
}
/**
* @Apidoc\Title("删除")
* @Apidoc\Author("pengking")
* @Apidoc\Header(ref="api_login")
* @Apidoc\Method("DELETE")
    * @Apidoc\Param("id",type="int",require=true,desc="唯一id")
* @Apidoc\Returned("data",type="boolean",desc="删除状态")
*/
public function delete(Request $request){
    try {
        $params = $request->post();
        $res = $this->service->delete($params['id']);
     } catch (\Exception $e) {
        return err_msg('删除失败', $e->getMessage());
    }
    if ($res) {
        return ok_msg('删除成功', $res);
    } else {
        return err_msg('删除失败', $res);
    }
}
}
