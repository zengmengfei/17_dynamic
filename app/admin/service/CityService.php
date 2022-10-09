<?php


namespace app\admin\service;

use app\admin\model\City;

/**
 * 城市管理-服务类
 * @author PENGKING
 * @since 2020/11/15
 * Class CityService
 * @package app\admin\service
 */
class CityService extends BaseService
{
    /**
     * 构造函数
     * @author PENGKING
     * @since 2020/11/15
     * CityService constructor.
     */
    public function __construct()
    {
        $this->model = new City();
    }

    /**
     * 获取城市列表
     * @return array
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @since 2020/11/15
     * @author PENGKING
     */
    public function getList()
    {
        // 请求参数
        $param = request()->param();

        // 查询条件
        $map = [];
        // 上级ID
        $pid = intval(getter($param, 'pid', 0));
        if (!$pid) {
            $map[] = ['pid', '=', 0];
        } else {
            $map[] = ['pid', '=', $pid];
        }
        // 城市名称
        $name = getter($param, "name");
        if ($name) {
            $map[] = ['name', 'like', "%{$name}%"];
        }
        $list = $this->model->getList($map, "sort asc");
        if (!empty($list)) {
            foreach ($list as &$val) {
                if ($val['level'] <= 2) {
                    $val['hasChildren'] = true;
                }
            }
        }
        return message("操作成功", true, $list);
    }

}