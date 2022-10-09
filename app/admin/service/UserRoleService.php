<?php


namespace app\admin\service;

use app\admin\model\UserRole;

/**
 * 用户角色关系-服务类
 * @author PENGKING
 * @since 2020/11/14
 * Class UserRoleService
 * @package app\admin\service
 */
class UserRoleService extends BaseService
{
    /**
     * 构造函数
     * @author PENGKING
     * @since 2020/11/14
     * UserRoleService constructor.
     */
    public function __construct()
    {
        $this->model = new UserRole();
    }

    /**
     * 获取用户角色列表
     * @param $userId 用户ID
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     * @since 2020/11/14
     * @author PENGKING
     */
    public function getUserRoleList($userId)
    {
        $roleList = $this->model->alias("ur")
            ->field('r.*')
            ->join(DB_PREFIX . 'role r', 'ur.role_id=r.id')
            ->distinct(true)
            ->where('ur.user_id', '=', $userId)
            ->where('r.status', '=', 1)
            ->where('r.mark', '=', 1)
            ->order('r.sort asc')
            ->select()->toArray();
        return $roleList;
    }

    /**
     * 删除用户角色关系数据
     * @param $userId 用户ID
     * @since 2020/11/11
     * @author PENGKING
     */
    public function deleteUserRole($userId)
    {
        $this->model->where("user_id", '=', $userId)->delete();
    }

    /**
     * 批量插入用户角色关系数据
     * @param $userId 用户ID
     * @param $roleIds 角色ID集合
     * @author PENGKING
     * @since 2020/11/11
     */
    public function insertUserRole($userId, $roleIds)
    {
        if (!empty($roleIds)) {
            $list = [];
            foreach ($roleIds as $val) {
                $data = [
                    'user_id' => $userId,
                    'role_id' => $val,
                ];
                $list[] = $data;
            }
            $this->model->insertAll($list);
        }
    }

}