<?php
namespace app\api\model;
use think\facade\db;
use think\facade\Cache;

class ApiLog extends BaseModel
{
    // 设置数据表
    protected $table = null;
    // 自定义日志标题
    protected static $title = '';
    // 自定义日志内容
    protected static $content = '';

    /**
     * 构造函数
     * @param array $data
     * @since 2020/11/14
     * ActionLog constructor.
     * @author PENGKING
     */
    public function __construct(array $data = [])
    {
        parent::__construct($data);
        // 设置表名
        define('DB_PREFIX', env('database.prefix', 'pk_'));
        $this->table = DB_PREFIX . 'log_api_' . date('Y') . '_' . date('m');
        // 初始化行为日志表

        $this->initTable();
    }

    /**
     * 初始化日志表
     * @return string|null
     * @throws \think\db\exception\BindParamException
     * @author PENGKING
     * @since 2020/11/14
     */
    private function initTable()
    {
        $tbl = $this->table;
        if (!$this->tableExists($tbl)) {
            $sql = "CREATE TABLE `{$tbl}` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '唯一性标识',
  `guid` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '操作人用户名',
  `method` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '请求类型',
  `module` varchar(30) DEFAULT NULL COMMENT '模型',
  `url` text CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '操作页面',
  `param` text CHARACTER SET utf8mb4 COMMENT '请求参数(JSON格式)',
  `ip` varchar(18) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT 'IP地址',
  `os` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '操作系统',
  `browser` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '浏览器',
  `user_agent` varchar(360) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT 'User-Agent',
  `create_time` int(11) unsigned DEFAULT '0' COMMENT '添加时间',
  `mark` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '有效标识：1正常 0删除',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='接口调用日志表';";
           Db::query($sql);
        }

        return $tbl;
    }

    /**
     * 设置标题
     * @param $title 标题
     * @since 2020/11/14
     * @author PENGKING
     */
    public static function setTitle($title)
    {
        self::$title = $title;
    }

    /**
     * 设置内容
     * @param $content 内容
     * @since 2020/11/14
     * @author PENGKING
     */
    public static function setContent($content)
    {
        self::$content = $content;
    }

    /**
     * 创建日志
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @author PENGKING
     * @since 2020/11/20
     */
    public static function record()
    {
        // 获取guid
        $guid = request()->header("guid");
                // 日志数据
                $data = [
                    'guid' => $guid?$guid:"未登录请求",
                    'module' => app('http')->getName(),
                    'method' => request()->method(),
                    'url' => request()->url(true), // 获取完成URL
                    'param' => request()->param() ? json_encode(request()->param()) : '',
                    'ip' => request()->ip(),
                    'os' => get_os(),
                    'browser' => get_browse(),
                    'user_agent' => request()->server('HTTP_USER_AGENT'),
                    'create_time' => time(),
                ];
                // 日志入库
              self::insert($data);
    }

}
