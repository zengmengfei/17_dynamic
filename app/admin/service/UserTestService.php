<?php namespace app\admin\service;


use app\admin\model\UserTest;

/**
* 人员测试管理-服务类
* @author PENGKING
* @since: 2022/10/08
* Class UserTestService
* @package app\admin\service
*/
class UserTestService extends BaseService
{
/**
* 构造函数
* LevelService constructor.
*/
public function __construct()
{
$this->model = new UserTest();
}

/**
* 获取数据列表
* @return array
* @since 2022/10/08
* @author PENGKING
*/
public function getList()
{
$param = request()->param();

// 查询条件
$map = [];


return parent::getList($map); // TODO: Change the autogenerated stub
}


                            
/**
* 获取数据列表
* @return array
* @since 2022/10/08* @author PENGKING*/
public function getListSelect()
{
return parent::getListSelect();
}

}