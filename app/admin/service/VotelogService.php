<?php 


namespace app\admin\service;


use app\admin\model\Votelog;

/**
 * 投票记录管理-服务类
 * @author PENGKING
 * @since: 2022/07/26
 * Class VotelogService
 * @package app\admin\service
 */
class VotelogService extends BaseService
{
    /**
     * 构造函数
     * LevelService constructor.
     */
    public function __construct()
    {
        $this->model = new Votelog();
    }
	
	/**
     * 获取数据列表
     * @return array
     * @since 2022/07/26
     * @author PENGKING
     */
    public function getList()
    {
        $param = request()->param();

        // 查询条件
        $map = [];
		

        return parent::getList($map); // TODO: Change the autogenerated stub
    }


                                            
        /**
        * 获取数据列表
        * @return array
        * @since 2022/07/26        * @author PENGKING        */
        public function getListSelect()
        {
            return parent::getListSelect();
        }

}