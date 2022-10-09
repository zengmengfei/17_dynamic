<?php
declare (strict_types = 1);

namespace app\api\event;

use think\facade\Db;

class CmsClickLike
{
    /**
     * 事件监听处理
     * @return mixed
     */
    public function handle($event)
    {
        //通过监听 更新点击量

        if($event['likes']==1){
            Db::name('sys_cms_list')->where('id',$event['cms_id'])->inc('likes_num')->update();
        }else{
            Db::name('sys_cms_list')->where('id',$event['cms_id'])->dec('likes_num')->update();
        }

    }
}
