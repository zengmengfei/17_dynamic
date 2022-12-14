<?php


namespace app\admin\controller;

use app\admin\service\MenuService;

/**
 * 菜单管理-控制器
 * @author PENGKING
 * @since 2020/11/15
 * Class Menu
 * @package app\admin\controller
 */
class Menu extends Backend
{
    /**
     * 初始化
     * @author PENGKING
     * @since 2020/11/15
     */
    protected function initialize()
    {
        parent::initialize(); // TODO: Change the autogenerated stub
        $this->service = new MenuService();
    }

}