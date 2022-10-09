<?php
namespace app\api\validate;
use app\api\validate\BaseValidate;
class SysKeyworlds extends  BaseValidate {
    protected $rule = [
            'title' => 'require',
        ];
        protected $message = [
        ];
        protected $scene = [
            'add'  =>  [],
            'edit'  =>  [],
        ];
}