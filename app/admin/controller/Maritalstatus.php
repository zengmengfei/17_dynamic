<?php 


namespace app\admin\controller;


use app\admin\service\MaritalstatusService;

/**
 * 婚姻状态管理-控制器
 * @author PENGKING
 * @since: 2022/03/29
 * Class Maritalstatus
 * @package app\admin\controller
 */
class Maritalstatus extends Backend
{
    /**
     * 初始化方法
     * @author PENGKING
     * @since: 2022/03/29
     */
    public function initialize()
    {
        parent::initialize(); // TODO: Change the autogenerated stub
        $this->service = new MaritalstatusService();
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