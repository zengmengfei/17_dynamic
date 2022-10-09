<?php


namespace app\admin\service;

use app\admin\model\AdSort;

/**
 * 广告位-服务类
 * @author PENGKING
 * @since 2020/11/15
 * Class AdSortService
 * @package app\admin\service
 */
class AdSortService extends BaseService
{
    /**
     * 构造函数
     * @author PENGKING
     * @since 2020/11/15
     * AdSortService constructor.
     */
    public function __construct()
    {
        $this->model = new AdSort();
    }

    /**
     * 获取广告位列表
     * @return array
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     * @author PENGKING
     * @since 2020/11/20
     */
    public function getAdSortList()
    {
        $list = $this->model->where("mark", '=', 1)->select()->toArray();
        return message("操作成功", true, $list);
    }

}