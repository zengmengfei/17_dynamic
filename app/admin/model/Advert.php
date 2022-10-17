<?php namespace app\admin\model;

use think\facade\Db;

/**
 * 广告-模型
 * @author PENGKING
 * @since: 2022/10/14
 * Class Advert
 * @package app\admin\model
 */
class Advert extends BaseModel
{
// 设置数据表名
    protected $name = "advert";

    /**
     * 获取缓存信息
     * @param int $id 记录ID
     * @return \app\common\model\数据信息|mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @author PENGKING
     * @since: 2022/10/14
     */
    public function getInfo($id)
    {
        $info = parent::getInfo($id); // TODO: Change the autogenerated stub
        if ($info) {


            $info['image_url'] = get_image_url($info['image_url']);


        }
        return $info;
    }
}