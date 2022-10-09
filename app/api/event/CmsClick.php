<?php
declare (strict_types = 1);

namespace app\api\event;
use think\facade\Db;
class CmsClick
{
    /**
     * 事件监听处理
     * @return mixed
     */
    public function handle($event)
    {
        //通过监听 更新点击量
       Db::name('sys_cms_list')->where('id',$event['id'])->inc('click_num')->update();;
    }
}
