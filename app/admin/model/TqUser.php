<?php 


namespace app\admin\model;


/**
 * 腾青用户-模型
 * @author PENGKING
 * @since: 2022/05/31
 * Class TqUser
 * @package app\admin\model
 */
class TqUser extends BaseModel
{
    // 设置数据表名
    protected $name = "tq_user";

    /**
     * 获取缓存信息
     * @param int $id 记录ID
     * @return \app\common\model\数据信息|mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @author PENGKING
     * @since: 2022/05/31
     */
    public function getInfo($id)
    {
        $info = parent::getInfo($id); // TODO: Change the autogenerated stub
        if ($info) {
                                                                                                                                        
            // 用户头像
            $info['avatar'] = get_image_url($info['avatar']);
                                                                                                                                                                                                                                                                            
        }
        return $info;
    }
}