<?php 


namespace app\admin\controller;


use app\admin\service\Actionlog202112Service;

/**
 * 系统行为日志管理-控制器
 * @author PENGKING
 * @since: 2022/04/02
 * Class Actionlog202112
 * @package app\admin\controller
 */
class Actionlog202112 extends Backend
{
    /**
     * 初始化方法
     * @author PENGKING
     * @since: 2022/04/02
     */
    public function initialize()
    {
        parent::initialize(); // TODO: Change the autogenerated stub
        $this->service = new Actionlog202112Service();
    }
	
                                                                    
        /**
        * 获取数据列表
        * @return array
        * @since 2022/04/02
        * @author PENGKING

        */
        public function getListSelect()
        {
            $result = $this->service->getListSelect();
            return $result;
        }

}