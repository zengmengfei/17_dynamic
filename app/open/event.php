<?php
// 这是系统自动生成的event定义文件
return [
    'listen'    => [
        'AppInit'  => [],
        'HttpRun'  => [],
        'HttpEnd'  => [app\open\event\Log::class],
        'LogLevel' => [],
        'LogWrite' => [],
    ],

];
