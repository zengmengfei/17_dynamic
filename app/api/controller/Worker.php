<?php

namespace app\api\controller;
use think\worker\Server;
class Worker  extends Server
{
    protected $socket = 'http://192.168.2.188:7272';

    public function onMessage($connection,$data)
    {
        $connection->send(json_encode($data));

    }
}