<?php 


namespace app\admin\controller;


use app\admin\service\VoteconfigService;

/**
 * 投票设置管理-控制器
 * @author PENGKING
 * @since: 2022/07/25
 * Class Voteconfig
 * @package app\admin\controller
 */
class Voteconfig extends Backend
{
    /**
     * 初始化方法
     * @author PENGKING
     * @since: 2022/07/25
     */
    public function initialize()
    {
        parent::initialize(); // TODO: Change the autogenerated stub
        $this->service = new VoteconfigService();
    }
	
                                                        	        
        /**
        * 获取数据列表
        * @return array
        * @since 2022/07/25
        * @author PENGKING

        */
        public function getListSelect()
        {
            $result = $this->service->getListSelect();
            return $result;
        }

}