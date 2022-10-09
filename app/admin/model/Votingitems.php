<?php 


namespace app\admin\model;


/**
 * 投票选项-模型
 * @author PENGKING
 * @since: 2022/07/25
 * Class Votingitems
 * @package app\admin\model
 */
class Votingitems extends BaseModel
{
    // 设置数据表名
    protected $name = "votingitems";

    /**
     * 获取缓存信息
     * @param int $id 记录ID
     * @return \app\common\model\数据信息|mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @author PENGKING
     * @since: 2022/07/25
     */
    public function getInfo($id)
    {
        $info = parent::getInfo($id); // TODO: Change the autogenerated stub
        if ($info) {
                                                                                                                                                                
            // 图片地址
            $info['images'] = get_image_url($info['images']);
                                                                                        
        }
        return $info;
    }
}