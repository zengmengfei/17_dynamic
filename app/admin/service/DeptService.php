<?php


namespace app\admin\service;

use app\admin\model\Dept;

/**
 * 部门管理-服务类
 * @author PENGKING
 * @since 2020/11/15
 * Class DeptService
 * @package app\admin\service
 */
class DeptService extends BaseService
{
    /**
     * 构造函数
     * @author PENGKING
     * @since 2020/11/15
     * DeptService constructor.
     */
    public function __construct()
    {
        $this->model = new Dept();
    }

    /**
     * 获取部门列表
     * @return array
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @since 2020/11/20
     * @author PENGKING
     */
    public function getList()
    {
        // 请求参数
        $param = request()->param();

        // 查询条件
        $map = [];

        // 部门名称
        $name = getter($param, "name");
        if ($name) {
            $map[] = ['name', 'like', "%{$name}%"];
        }
        $code = getter($param, "code");
        if ($code) {
            $map[] = ['code', 'like', "%{$code}%"];
        }

        $list = $this->model->getList($map, "sort asc");
        return message("操作成功", true, $list);
    }

    /**
     * 获取部门列表
     * @return array
     * @since 2021/5/26
     * @author PENGKING
     */
    public function getDeptList()
    {
        $deptList = $this->model
            ->where("mark", "=", 1)
            ->select()
            ->toArray();
        return message("操作成功", true, $deptList);
    }

}