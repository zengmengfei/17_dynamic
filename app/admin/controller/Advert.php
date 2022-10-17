<?php


namespace app\admin\controller;


use app\admin\service\AdvertService;

/**
 * 广告管理-控制器
 * @author PENGKING
 * @since: 2022/10/14
 * Class Advert
 * @package app\admin\controller
 */
class Advert extends Backend
{
    /**
     * 初始化方法
     * @author PENGKING
     * @since: 2022/10/14
     */
    public function initialize()
    {
        parent::initialize(); // TODO: Change the autogenerated stub
        $this->service = new AdvertService();
    }


    /**
     * 获取数据列表
     * @return array
     * @since 2022/10/14
     * @author PENGKING
     */
    public function getListSelect()
    {
        $result = $this->service->getListSelect();
        return $result;
    }


}