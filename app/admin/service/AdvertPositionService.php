<?php namespace app\admin\service;


use app\admin\model\AdvertPosition;

/**
 * 广告位管理-服务类
 * @author PENGKING
 * @since: 2022/10/14
 * Class AdvertPositionService
 * @package app\admin\service
 */
class AdvertPositionService extends BaseService
{
    /**
     * 构造函数
     * LevelService constructor.
     */
    public function __construct()
    {
        $this->model = new AdvertPosition();
    }

    /**
     * 获取数据列表
     * @return array
     * @since 2022/10/14
     * @author PENGKING
     */
    public function getList()
    {
        $param = request()->param();

        // 查询条件
        $map = [];


        // 广告位名称
        $name = isset($param['name']) ? trim($param['name']) : '';
        if ($name) {
            $map[] = ['name', 'like', "%{$name}%"];
        }
        // 广告位类型
        $type = isset($param['type']) ? trim($param['type']) : '';
        if ($type) {
            $map[] = ['type', '=', $type];
        }

        return parent::getList($map); // TODO: Change the autogenerated stub
    }


    /**
     * 添加或编辑
     * @return array
     * @since 2022/10/14
     * @author PENGKING
     */
    public function edit()
    {
        // 参数
        $data = request()->param();
        $index_key = $data['index_key'] ?? '';
        $advertPosition = new AdvertPosition();
        $info = $advertPosition->where(['index_key' => $index_key, 'mark' => 1])->find();
        if (!empty($info)) {
            $info = $info->toArray();
            if (empty($data['id']) || $data['id'] != $info['id']) {
                base_msg('广告位标识不可重复');
            }
        }
        if (isset($data['is_complete']) && $data['is_complete'] == 1) {
            $data['width'] = $data['height'] = 0;
        }
        return parent::edit($data); // TODO: Change the autogenerated stub
    }

    /**
     * 获取数据列表
     * @return array
     * @since 2022/10/14* @author PENGKING
     */
    public function getListSelect()
    {
        return parent::getListSelect();
    }

}