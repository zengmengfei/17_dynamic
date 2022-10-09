<?php 


namespace app\admin\controller;


use app\admin\service\DisabilityService;

/**
 * 残疾人管理-控制器
 * @author PENGKING
 * @since: 2022/03/29
 * Class Disability
 * @package app\admin\controller
 */
class Disability extends Backend
{
    /**
     * 初始化方法
     * @author PENGKING
     * @since: 2022/03/29
     */
    public function initialize()
    {
        parent::initialize(); // TODO: Change the autogenerated stub
        $this->service = new DisabilityService();
    }
    /**
     * 获取数据列表
     * @return array
     * @since 2022/03/29
     * @author PENGKING
     */
    public function getListSelect()
    {
        $result = $this->service->getListSelect();
        return $result;
    }
                	                    
}