<?php
use think\facade\Db;

// 这是系统自动生成的公共文件


//根据用户id 获取用户编码
function get_admin_info($userId = null)
{
    $data = cache('admin_id_'.$userId);
    //halt($data);
    if(empty($data)){
        $data = Db::name('user')->where('id', $userId)->filter(function($db) use($userId) {
            $db['role_id'] = Db::name('user_role')->where('user_id',$userId)->value('role_id');
            return $db;
        })->find();
        cache('admin_id_'.$userId,$data,360);
    }
    return $data;
}
