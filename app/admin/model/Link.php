<?php


namespace app\admin\model;

/**
 * 友联-模型
 * @author PENGKING
 * @since 2020/11/15
 * Class Link
 * @package app\admin\model
 */
class Link extends BaseModel
{
    // 设置数据表名
    protected $name = "link";

    /**
     * 获取友链信息
     * @param int $id 友链ID
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
            // 友链图片
            if ($info['image']) {
                $info['image'] = get_image_url($info['image']);
            }
            // 获取栏目名称
            if ($info['cate_id']) {
                $itemCateModel = new ItemCate();
                $itemCateName = $itemCateModel->getCateName($info['cate_id'], ">>");
                $info['item_cate_name'] = $itemCateName;
            }
        }
        return $info;
    }

}