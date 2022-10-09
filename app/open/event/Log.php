<?php
declare (strict_types = 1);
namespace app\open\event;
use app\open\model\OpenLog;

class Log
{
    /**
     * 执行句柄
     * @author PENGKING
     * @since 2020/11/21
     */
    public function handle()
    {
        OpenLog::record();
    }
}
