<?php
declare (strict_types = 1);

namespace app\api\model\channel;

use app\api\model\ApiBaseModel;
use app\api\model\user\WxUser;
use think\facade\Db;

/**
 * @mixin \think\Model
 */
class ChannelMessage extends ApiBaseModel
{
    protected $name = "channel_message";

    public function user()
    {
        return $this->hasOne(WxUser::class, 'guid', 'guid')->field(['guid', 'nickname', 'avatar', 'gender']);
    }
}
