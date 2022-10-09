<?php


namespace app\admin\model;


use app\admin\service\UserRoleService;

/**
 * 用户-模型
 * @author PENGKING
 * @since 2020/11/14
 * Class User
 * @package app\admin\model
 */
class User extends BaseModel
{
    // 设置数据表名称
    protected $name = "user";

    /**
     * 获取数据信息
     * @param int $id 用户ID
     * @return 数据信息|mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @author PENGKING
     * @since 2020/11/14
     */
    public function getInfo($id)
    {
        $info = parent::getInfo($id); // TODO: Change the autogenerated stub
        if ($info) {
            // 头像
            if ($info['avatar']) {
                $info['avatar'] = get_image_url($info['avatar']);
            }

            // 性别
            if ($info['gender']) {
                $info['gender_name'] = config('admin.gender_list')[$info['gender']];
            }
            // 出生日期
            if ($info['birthday']) {
                $info['birthday'] = datetime($info['birthday']);
            }

            // 城市
            $city = [];
            $city[] = !empty($info['province_code']) ? strval($info['province_code']) : "";
            $city[] = !empty($info['city_code']) ? strval($info['city_code']) : "";
            $city[] = !empty($info['district_code']) ? strval($info['district_code']) : "";
            $info['city'] = $city;

            // 职级
            if ($info['level_id']) {
                $levelMod = new Level();
                $levelInfo = $levelMod->getInfo($info['level_id']);
                $info['level_name'] = $levelInfo['name'];
            }

            // 岗位
            if ($info['position_id']) {
                $positionModel = new Position();
                $positionInfo = $positionModel->getInfo($info['position_id']);
                $info['position_name'] = $positionInfo['name'];
            }

            // 部门
            if ($info['dept_id']) {
                $deptModel = new Dept();
                $deptInfo = $deptModel->getInfo($info['dept_id']);
                $info['dept_name'] = $deptInfo ? $deptInfo['name'] : "";
            }

            // 获取用户角色列表
            $userRoleService = new UserRoleService();
            $roleList = $userRoleService->getUserRoleList($id);
            $info['roles'] = $roleList;

        }
        return $info;
    }

}