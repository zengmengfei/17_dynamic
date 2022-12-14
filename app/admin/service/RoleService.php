<?php


namespace app\admin\service;

use app\admin\model\Menu;
use app\admin\model\Role;
use app\admin\model\RoleMenu;

/**
 * 角色管理-服务类
 * @author PENGKING
 * @since 2020/11/14
 * Class RoleService
 * @package app\admin\service
 */
class RoleService extends BaseService
{
    /**
     * 构造函数
     * @author PENGKING
     * @since 2020/11/14
     * RoleService constructor.
     */
    public function __construct()
    {
        $this->model = new Role();
    }

    /**
     * 获取数据列表
     * @return array
     * @since 2020/11/20
     * @author PENGKING
     */
    public function getList()
    {
        return parent::getList([], "id asc"); // TODO: Change the autogenerated stub
    }

    /**
     * 获取角色列表
     * @return array
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     * @author PENGKING
     * @since 2020/11/14
     */
    public function getRoleList()
    {
        $list = $this->model->where([
            ['status', '=', 1],
            ['mark', '=', 1],
        ])->order("sort", "asc")
            ->select()
            ->toArray();
        return message("操作成功", true, $list);
    }

    /**
     * 获取权限列表
     * @return array
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     * @author PENGKING
     * @since 2020/11/20
     */
    public function getPermissionList()
    {
        // 请求参数
        $param = request()->param();
        // 角色ID
        $roleId = intval(getter($param, "role_id", 0));
        // 获取全部菜单
        $menuModel = new Menu();
        $menuList = $menuModel->where([
            ['status', '=', 1],
            ['mark', '=', 1],
        ])->order("sort", "asc")->select()->toArray();
        if (!empty($menuList)) {
            $roleMenuModel = new RoleMenu();
            $roleMenuList = $roleMenuModel
                ->field("menu_id")
                ->where("role_id", '=', $roleId)
                ->select()
                ->toArray();
            $menuIdList = array_key_value($roleMenuList, "menu_id");
            foreach ($menuList as &$val) {
                if (in_array($val['id'], $menuIdList)) {
                    $val['checked'] = true;
                    $val['open'] = true;
                }
            }
        }
        return message("操作成功", true, $menuList);
    }

    /**
     * 保存权限
     * @return array
     * @since 2020/11/14
     * @author PENGKING
     */
    public function savePermission()
    {
        // 请求参数
        $param = request()->param();
        // 角色ID
        $roleId = intval(getter($param, "role_id", 0));
        if (!$roleId) {
            return message("角色ID不能为空", false);
        }

        // 删除角色菜单关系数据
        $roleMenuModel = new RoleMenu();
        $roleMenuModel->where("role_id", $roleId)->delete();

        // 插入角色菜单关系数据
        $menuIds = isset($param["menu_id"]) ? $param["menu_id"] : [];
        $list = [];
        if (is_array($menuIds) && !empty($menuIds)) {
            foreach ($menuIds as $val) {
                $data = [
                    'role_id' => $roleId,
                    'menu_id' => $val,
                ];
                $list[] = $data;
            }
        }
        $roleMenuModel->insertAll($list);
        return message();
    }

}