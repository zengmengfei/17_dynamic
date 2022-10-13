<?php
declare (strict_types = 1);

namespace app\api\model\activity;

use app\api\model\ApiBaseModel;
use think\facade\Db;

/**
 * @mixin \think\Model
 */
class Tags extends ApiBaseModel
{
    protected $name = "activity_tags";
    const maxNum = 10;

    public function getTags($param) {
        $map = ['guid' => $param['guid'], 'mark' => 1];
        $list = self::where($map)->order(['id' => 'asc'])->field(['id', 'tag_name'])->select();
        return $list;
    }

    // 添加标签
    public function addTag($param) {
        if ($this->checkTagName($param)) {
            base_msg('不可重复添加相同标签名');
        }
        $count = $this->getTagCount($param);
        if ($count && $count > self::maxNum) {
            base_msg('自定义标签添加最大数为'.self::maxNum.'个');
        }
        return self::save(['guid' => $param['guid'],'tag_name' => trim($param['tag_name'])]);
    }

    // 删除标签
    public function delTag($param) {
        return self::where(['id' => $param['id'], 'guid' => $param['guid']])->update(['mark' => 0]);
    }

    public function checkTagName($param) {
        $map = ['guid' => $param['guid'], 'tag_name' => trim($param['tag_name']),'mark' => 1];
        $count = self::where($map)->count();
        return ($count && $count > 0)?true:false;
    }

    public function getTagCount($param) {
        $map = ['guid' => $param['guid'], 'mark' => 1];
        return self::where($map)->count();
    }
}
