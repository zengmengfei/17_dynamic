<?php


namespace app\admin\controller;

use app\admin\service\ConfigWebService;

/**
 * 网站配置-控制器
 * @author PENGKING
 * @since 2021/6/25
 * Class Configweb
 * @package app\admin\controller
 */
class Configweb extends Backend
{
    /**
     * 初始化
     * @author PENGKING
     * @since 2021/6/25
     */
    protected function initialize()
    {
        parent::initialize(); // TODO: Change the autogenerated stub
        $this->service = new ConfigWebService();
    }

    /**
     * 保存配置
     * @return mixed
     * @since 2021/6/25
     * @author PENGKING
     */
    public function edit()
    {
        $result = $this->service->edit();
        return $result;
    }

}