<?php


namespace app\admin\controller;

use app\admin\service\RoleService;

/**
 * 角色管理-控制器
 * @author PENGKING
 * @since 2020/11/14
 * Class Role
 * @package app\admin\controller
 */
class Role extends Backend
{
    /**
     * 初始化
     * @author PENGKING
     * @since 2020/11/14
     */
    protected function initialize()
    {
        parent::initialize(); // TODO: Change the autogenerated stub
        $this->service = new RoleService();
    }

    /**
     * 获取角色列表
     * @return mixed
     * @since 2020/11/14
     * @author PENGKING
     */
    public function getRoleList()
    {
        $result = $this->service->getRoleList();
        return $result;
    }

    /**
     * 获取权限列表
     * @return mixed
     * @since 2020/11/14
     * @author PENGKING
     */
    public function getPermissionList()
    {
        $result = $this->service->getPermissionList();
        return $result;
    }

    /**
     * 保存权限
     * @return mixed
     * @since 2020/11/14
     * @author PENGKING
     */
    public function savePermission()
    {
        $result = $this->service->savePermission();
        return $result;
    }

}