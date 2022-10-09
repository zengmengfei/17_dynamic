<?php
// 这是系统自动生成的event定义文件
return [
    'bind'    =>    [
        //'UserLogin' => '\app\api\event\UserLogin',
        // 更多事件绑定
    ],
    'listen'    => [
        'AppInit'  => [],
        'HttpRun'  => [],
        'HttpEnd'  => [app\api\event\Log::class],
        'LogLevel' => [],
        'LogWrite' => [],
        'CmsClick' =>[app\api\event\CmsClick::class],
        'CmsClickLike' =>[app\api\event\CmsClickLike::class],
    ],
];
