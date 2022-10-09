<?php 


namespace app\admin\service;


use app\admin\model\Example2;

/**
 * 演示案例二管理-服务类
 * @author PENGKING
 * @since: 2021/12/17
 * Class Example2Service
 * @package app\admin\service
 */
class Example2Service extends BaseService
{
    /**
     * 构造函数
     * LevelService constructor.
     */
    public function __construct()
    {
        $this->model = new Example2();
    }
	
	/**
     * 获取数据列表
     * @return array
     * @since 2021/12/17
     * @author PENGKING
     */
    public function getList()
    {
        $param = request()->param();

        // 查询条件
        $map = [];
		
	
	    // 测试名称
        $name = isset($param['name']) ? trim($param['name']) : '';
        if ($name) {
            $map[] = ['name', 'like', "%{$name}%"];
        }
		
	    // 性别
        $gender = isset($param['gender']) ? (int)$param['gender'] : 0;
        if ($gender) {
            $map[] = ['gender', '=', $gender];
        }
		
	    // 状态
        $status = isset($param['status']) ? (int)$param['status'] : 0;
        if ($status) {
            $map[] = ['status', '=', $status];
        }
	
        return parent::getList($map); // TODO: Change the autogenerated stub
    }


                		                            
}