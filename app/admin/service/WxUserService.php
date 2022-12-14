<?php namespace app\admin\service;


use app\admin\model\WxUser;

/**
 * 小程序用户管理-服务类
 * @author PENGKING
 * @since: 2022/10/09
 * Class WxUserService
 * @package app\admin\service
 */
class WxUserService extends BaseService
{
    /**
     * 构造函数
     * LevelService constructor.
     */
    public function __construct()
    {
        $this->model = new WxUser();
    }

    /**
     * 获取数据列表
     * @return array
     * @since 2022/10/09
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
     * 添加或编辑
     * @return array
     * @since 2022/10/09
     * @author PENGKING
     */
    public function edit()
    {
        // 参数
        $data = request()->param();

        // 头像地址处理
        $avatar = getter($data, 'avatar');
        if (!empty($avatar)) {
            if (strpos($avatar, "temp") !== false) {
                $data['avatar'] = save_image($avatar, 'wxuser');
            } else {
                $data['avatar'] = str_replace(IMG_URL, "", $avatar);
            }
        }

        return parent::edit($data); // TODO: Change the autogenerated stub
    }


    /**
     * 获取数据列表
     * @return array
     * @since 2022/10/09* @author PENGKING
     */
    public function getListSelect()
    {
        return parent::getListSelect();
    }

}