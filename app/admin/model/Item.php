<?php


namespace app\admin\model;

/**
 * 站点-模型
 * @author PENGKING
 * @since 2020/11/15
 * Class Item
 * @package app\admin\model
 */
class Item extends BaseModel
{
    // 设置数据表名
    protected $name = "item";

    /**
     * 获取记录信息
     * @param int $id 站点ID
     * @return 数据信息|mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @author PENGKING
     * @since 2020/11/15
     */
    public function getInfo($id)
    {
        $info = parent::getInfo($id); // TODO: Change the autogenerated stub
        if ($info) {
            // 站点图片
            if ($info['image']) {
                $info['image'] = get_image_url($info['image']);
            }
        }
        return $info;
    }

}