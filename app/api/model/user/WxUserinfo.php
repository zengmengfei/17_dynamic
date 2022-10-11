<?php
declare (strict_types = 1);

namespace app\api\model\user;

use app\api\model\ApiBaseModel;

/**
 * @mixin \think\Model
 */
class WxUserinfo extends ApiBaseModel
{
    protected $name = "wx_userinfo";

    public function getTagsAttr($value)
    {
        return $value?explode(',', $value):'';
    }

    public function setTagsAttr($value)
    {
        return ($value && is_array($value))?implode(',',$value):$value;
    }

    public function getImgsAttr($value)
    {
        return $value?explode(',', $value):'';
    }

    public function setImgsAttr($value)
    {
        return ($value && is_array($value))?implode(',',$value):$value;
    }
}
