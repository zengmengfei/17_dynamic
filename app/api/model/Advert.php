<?php
declare (strict_types = 1);

namespace app\api\model;

/**
 * @mixin \think\Model
 */
class Advert extends ApiBaseModel
{
    // 设置数据表名称
    protected $name = "advert";

    // 根据广告位index获取广告列表
    public function getListByIndex($index) {
        $list = self::with(['position' => function($query) use ($index) {
            $query->where(['index_key' => $index, 'mark' => 1]);
        }])->where(['status' => 1, 'mark' => 1])->order(['sort' => 'asc', 'create_time' => 'desc'])->select();
        if (empty($list)) return $list;
        $list = $list->toArray();
        $newList = [];
        foreach ($list as $v) {
            if (!empty($v['start_time']) && time() < strtotime($v['start_time'])) continue;
            if (!empty($v['end_time']) && time() > strtotime($v['end_time'])) continue;
            $item = [
                'id' => $v['id'],
                'pid' => $v['pid'],
                'activity_sn' => $v['activity_sn'],
                'image_url' => $v['image_url']?get_image_url($v['image_url']):'',
                'title' => $v['title'],
                'link_url' => $v['link_url'],
            ];
            $newList[] = $item;
        }
        return $newList;
    }

    public function position()
    {
        return $this->hasOne(AdvertPosition::class, 'id', 'pid')->field('id, index_key');
    }
}
