<?php
declare (strict_types = 1);

namespace app\api\model\user;

use app\api\model\ApiBaseModel;
use think\facade\Db;

/**
 * @mixin \think\Model
 */
class CardBrowse extends ApiBaseModel
{
    protected $name = "user_card_browse";

    // 创建浏览名片记录
    public function userCardBrowse($guid, $uu_guid) {
        if (empty($guid) || empty($uu_guid) || ($guid == $uu_guid)) return false;
        $info = self::where(['guid' => $guid, 'uu_guid' => $uu_guid, 'mark' => 1])->find();
        if (empty($info)) {
            $res = self::save(['guid' => $guid, 'uu_guid' => $uu_guid]);
        } else {
            $info = $info->toArray();
            $res = self::where(['id' => $info['id']])->inc('browse_num', 1)->update(['update_time' => time()]);
        }
        return $res;
    }

    // 获取谁浏览我
    public function browseMeLsit($guid) {
        $list = self::with(['user'])->where(['uu_guid' => $guid, 'mark' => 1])->order(['update_time' => 'desc'])->select();
        if (empty($list)) return $list;
        $list = $list->toArray();
        foreach ($list as &$v) {
            $v['nickname'] = $v['user']['nickname'] ?? '';
            $v['avatar'] = $v['user']['avatar'] ?? '';
            unset($v['user']);
        }
        return $list;
    }

    public function user()
    {
        return $this->hasOne(WxUser::class, 'guid', 'guid')->field(['guid', 'nickname', 'avatar']);
    }


}
