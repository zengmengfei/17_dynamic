<?php


namespace app\api\model;

use think\facade\Db;
use think\Model;

/**
 * 模型基类
 *
 * @author PENGKING
 * @since 2020-04-21
 */
abstract class  BaseModel extends  Model
{
    // 自动写入时间戳字段,true开启false关闭
    protected $autoWriteTimestamp = true;
    // 创建时间字段自定义,默认create_time
    protected $createTime = 'create_time';
    // 更新时间字段自定义,默认update_time
    protected $updateTime = 'update_time';
    // 用户ID
    protected $userId = 0;

    public function __construct(array $data = [])
    {
        parent::__construct($data);
        // 解析Token获取用户ID
        $guid = request()->header("guid");
        $this->userId = $guid;
    }

    /**
     * 检查表是否存在
     *
     * @param string $table 数据表名称
     * @return bool 返回结果
     * @throws \think\db\exception\BindParamException
     * @throws \think\exception\PDOException
     * @author PENGKING
     * @date 2020-04-21
     */
    public function tableExists($table)
    {
        $tables = $this->getTablesList();
        if (strpos($table, DB_PREFIX) === false) {
            $table = DB_PREFIX . $table;
        }
        return in_array($table, $tables) ? true : false;
    }

    /**
     * 获取全部数据表
     *
     * @return array 返回结果
     * @throws \think\db\exception\BindParamException
     * @throws \think\exception\PDOException
     * @author PENGKING
     * @date 2020-04-21
     */
    public function getTablesList()
    {
        $tables = [];
        $database = strtolower(env('database.database'));
        $sql = 'SHOW TABLES';
        $data = Db::query($sql);
        foreach ($data as $v) {
            $tables[] = $v["Tables_in_{$database}"];
        }
        return $tables;
    }



}