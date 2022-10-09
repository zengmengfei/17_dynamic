<?php 


namespace app\admin\controller;


use app\admin\service\UserdynamicService;

/**
* 用户发布动态管理-控制器
* @author PENGKING
* @since: 2022/10/08
* Class Userdynamic
* @package app\admin\controller
*/
class Userdynamic extends Backend
{
/**
* 初始化方法
* @author PENGKING
* @since: 2022/10/08
*/
public function initialize()
{
parent::initialize(); // TODO: Change the autogenerated stub
$this->service = new UserdynamicService();
}

                                                                                                                                                                                                            
/**
* 获取数据列表
* @return array
* @since 2022/10/08
* @author PENGKING

*/
public function getListSelect()
{
$result = $this->service->getListSelect();
return $result;
}




}