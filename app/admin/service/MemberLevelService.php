<?php


namespace app\admin\service;

use app\admin\model\MemberLevel;

/**
 * 会员等级-服务类
 * @author PENGKING
 * @since 2020/11/15
 * Class MemberLevelService
 * @package app\admin\service
 */
class MemberLevelService extends BaseService
{
    /**
     * 构造函数
     * @author PENGKING
     * @since 2020/11/15
     * MemberLevelService constructor.
     */
    public function __construct()
    {
        $this->model = new MemberLevel();
    }

    /**
     * 获取会员等级列表
     * @return array
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     * @author PENGKING
     * @since 2020/11/15
     */
    public function getMemberLevelList()
    {
        $list = $this->model->where("mark", "=", 1)->select()->toArray();
        return message("操作成功", true, $list);
    }

}