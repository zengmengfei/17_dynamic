<?php
declare (strict_types = 1);
namespace app\api\event;
use app\api\model\ApiLog;

class Log
{
    /**
     * 执行句柄
     * @author PENGKING
     * @since 2020/11/21
     */
    public function handle()
    {
        ApiLog::record();
    }
}
