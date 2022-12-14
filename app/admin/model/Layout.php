<?php


namespace app\admin\model;

/**
 * 布局管理-模型
 * @author PENGKING
 * @since 2020/11/15
 * Class Layout
 * @package app\admin\model
 */
class Layout extends BaseModel
{
    // 设置数据表名
    protected $name = "layout";

    /**
     * 获取布局信息
     * @param int $id 布局ID
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
            // 推荐位置
            if ($info['loc_desc_id']) {
                $layoutDescModel = new LayoutDesc();
                $layoutDescInfo = $layoutDescModel->getInfo($info['loc_desc_id']);
                if ($layoutDescInfo) {
                    $info['loc_desc'] = $layoutDescInfo['loc_desc'] . ">>" . $layoutDescInfo['loc_id'];
                }
            }

            // 布局图片
            if ($info['image']) {
                $info['image'] = get_image_url($info['image']);
            }

            // 站点名称
            if ($info['item_id']) {
                $itemModel = new Item();
                $itemInfo = $itemModel->getInfo($info['item_id']);
                if ($itemInfo) {
                    $info['item_name'] = $itemInfo['name'];
                }
            }
        }
        return $info;
    }

}