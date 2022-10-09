<?php
declare (strict_types = 1);

namespace app\common\controller;

class Index
{
    public function index()
    {
        echo token();
        //return '您好！这是一个[common]示例应用';
    }
}
