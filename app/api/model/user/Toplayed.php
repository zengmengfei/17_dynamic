<?php
declare (strict_types = 1);

namespace app\api\model\user;

use app\api\model\ApiBaseModel;
use think\facade\Db;

/**
 * @mixin \think\Model
 */
class Toplayed extends ApiBaseModel
{
    protected $name = "user_toplayed";

    // 创建同玩关系
    public function createToplayed($guid1, $guid2) {
        if (empty($guid1) || empty($guid2) || ($guid1 == $guid2)) return false;
        list($guid, $uu_guid) = sort($guid1, $guid2);
        $count = self::where(['guid' => $guid, 'uu_guid' => $uu_guid, 'mark' => 1])->count();
        if ($count && $count > 0) return true;
        return self::save(['guid' => $guid, 'uu_guid' => $uu_guid]);
    }


    // 验证是否同玩关系
    public function checkToplayed($guid1, $guid2) {
        if (empty($guid1) || empty($guid2) || ($guid1 == $guid2)) return false;
        list($guid, $uu_guid) = sort($guid1, $guid2);
        $count = self::where(['guid' => $guid, 'uu_guid' => $uu_guid, 'mark' => 1])->count();
        return ($count && $count > 0)?true:false;
    }
}
