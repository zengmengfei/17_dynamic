<?php 


namespace app\admin\controller;


use app\admin\service\Actionlog202204Service;

/**
 * 系统行为日志管理-控制器
 * @author PENGKING
 * @since: 2022/04/12
 * Class Actionlog202204
 * @package app\admin\controller
 */
class Actionlog202204 extends Backend
{
    /**
     * 初始化方法
     * @author PENGKING
     * @since: 2022/04/12
     */
    public function initialize()
    {
        parent::initialize(); // TODO: Change the autogenerated stub
        $this->service = new Actionlog202204Service();
    }
	
                                                                    
        /**
        * 获取数据列表
        * @return array
        * @since 2022/04/12
        * @author PENGKING

        */
        public function getListSelect()
        {
            $result = $this->service->getListSelect();
            return $result;
        }

}