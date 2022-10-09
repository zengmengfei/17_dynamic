<?php


namespace app\admin\controller;

use app\admin\service\DictDataService;

/**
 * 字典数据管理-控制器
 * @author PENGKING
 * @since 2020/11/15
 * Class Dict
 * @package app\admin\controller
 */
class Dictdata extends Backend
{
    /**
     * 初始化
     * @author PENGKING
     * @since 2020/11/15
     */
    protected function initialize()
    {
        parent::initialize(); // TODO: Change the autogenerated stub
        $this->service = new DictDataService();
    }

    /**
     * 根据Code获取字典信息
     * @return mixed
     * @since 2021/7/5
     * @author PENGKING
     */
    public function getDictByCode()
    {
        return $this->service->getDictByCode();
    }

}