<?php


namespace app\admin\controller;

use app\admin\service\LoginLogService;

/**
 * 登录日志-控制器
 * @author PENGKING
 * @since 2020/11/15
 * Class Loginlog
 * @package app\admin\controller
 */
class Loginlog extends Backend
{
    /**
     * 初始化
     * @author PENGKING
     * @since 2020/11/15
     */
    protected function initialize()
    {
        parent::initialize(); // TODO: Change the autogenerated stub
        $this->service = new LoginLogService();
    }
}