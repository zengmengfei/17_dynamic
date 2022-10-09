<?php 


namespace app\admin\model;


/**
 * 重点人-模型
 * @author PENGKING
 * @since: 2022/03/29
 * Class Focus
 * @package app\admin\model
 */
class Focus extends BaseModel
{
    // 设置数据表名
    protected $name = "focus";

    /**
     * 获取缓存信息
     * @param int $id 记录ID
     * @return \app\common\model\数据信息|mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @author PENGKING
     * @since: 2022/03/29
     */
    public function getInfo($id)
    {
        $info = parent::getInfo($id); // TODO: Change the autogenerated stub
        if ($info) {
                                                                                                            
        }
        return $info;
    }
}