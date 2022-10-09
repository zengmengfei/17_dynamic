<?php namespace app\admin\model;

use think\facade\Db;
/**
* 用户动态点赞-模型
* @author PENGKING
* @since: 2022/10/08
* Class UserDynamicThumb
* @package app\admin\model
*/
class UserDynamicThumb extends BaseModel
{
// 设置数据表名
protected $name = "user_dynamic_thumb";

/**
* 获取缓存信息
* @param int $id 记录ID
* @return \app\common\model\数据信息|mixed
* @throws \think\db\exception\DataNotFoundException
* @throws \think\db\exception\ModelNotFoundException
* @author PENGKING
* @since: 2022/10/08
*/
public function getInfo($id)
{
$info = parent::getInfo($id); // TODO: Change the autogenerated stub
if ($info) {
                    
                            
                    $table = 'user';
                            $info[$table] = Db::name($table)->where('guid', $info['user_guid'])->where('mark', 1)->find();
                                        
                    $table = 'uu';
                            $info[$table] = Db::name('tq_user')->where('guid', $info['uu_guid'])->where('mark', 1)->find();
                                        
                            
                            
                            
            
}
return $info;
}
}