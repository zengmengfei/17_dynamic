<?php


namespace app\admin\controller;

use app\admin\service\UserService;

/**
 * 用户管理-控制器
 * @author PENGKING
 * @since 2020/11/14
 * Class User
 * @package app\admin\controller
 */
class User extends Backend
{
    /**
     * 初始化
     * @author PENGKING
     * @since 2020/11/14
     */
    protected function initialize()
    {
        parent::initialize(); // TODO: Change the autogenerated stub
        $this->service = new UserService();
    }

    /**
     * 重置密码
     * @return mixed
     * @since 2020/11/11
     * @author PENGKING
     */
    public function resetPwd()
    {
        $result = $this->service->resetPwd();
        return $result;
    }

}