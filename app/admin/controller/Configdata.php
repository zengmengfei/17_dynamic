<?php


namespace app\admin\controller;

use app\admin\service\ConfigDataService;

/**
 * 配置数据-控制器
 * @author PENGKING
 * @since 2020/11/15
 * Class Config
 * @package app\admin\controller
 */
class Configdata extends Backend
{
    /**
     * 初始化
     * @author PENGKING
     * @since 2020/11/15
     */
    protected function initialize()
    {
        parent::initialize(); // TODO: Change the autogenerated stub
        $this->service = new ConfigDataService();
    }

}