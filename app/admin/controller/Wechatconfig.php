<?php 


namespace app\admin\controller;


use app\admin\service\WechatconfigService;

/**
 * 微信配置管理-控制器
 * @author PENGKING
 * @since: 2022/06/17
 * Class Wechatconfig
 * @package app\admin\controller
 */
class Wechatconfig extends Backend
{
    /**
     * 初始化方法
     * @author PENGKING
     * @since: 2022/06/17
     */
    public function initialize()
    {
        parent::initialize(); // TODO: Change the autogenerated stub
        $this->service = new WechatconfigService();
    }
	
                        
        /**
        * 获取数据列表
        * @return array
        * @since 2022/06/17
        * @author PENGKING

        */
        public function getListSelect()
        {
            $result = $this->service->getListSelect();
            return $result;
        }

}