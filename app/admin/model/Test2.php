<?php 


namespace app\admin\model;


/**
 * Test2-模型
 * @author PENGKING
 * @since: 2022/07/22
 * Class Test2
 * @package app\admin\model
 */
class Test2 extends BaseModel
{
    // 设置数据表名
    protected $name = "test2";

    /**
     * 获取缓存信息
     * @param int $id 记录ID
     * @return \app\common\model\数据信息|mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @author PENGKING
     * @since: 2022/07/22
     */
    public function getInfo($id)
    {
        $info = parent::getInfo($id); // TODO: Change the autogenerated stub
        if ($info) {
                                                                                                                            
            // 图片
            $info['images'] = get_image_url($info['images']);
                                                    
        }
        return $info;
    }
}