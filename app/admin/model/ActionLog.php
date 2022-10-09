<?php


namespace app\admin\model;

use think\facade\Db;

/**
 * 行为日志-模型
 * @author PENGKING
 * @since 2020/11/14
 * Class ActionLog
 * @package app\admin\model
 */
class ActionLog extends BaseModel
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
        $this->table = DB_PREFIX . 'log_admin_' . date('Y') . '_' . date('m');
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
                  `username` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '操作人用户名',
                  `method` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '请求类型',
                  `module` varchar(30) DEFAULT NULL COMMENT '模型',
                  `url` text CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '操作页面',
                  `param` text CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '请求参数(JSON格式)',
                  `title` varchar(100) DEFAULT NULL COMMENT '日志标题',
                  `type` tinyint(1) unsigned DEFAULT 0 COMMENT '操作类型：1登录系统 2注销系统 3操作日志',
                  `content` varchar(1000) DEFAULT '' COMMENT '内容',
                  `ip` varchar(18) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT 'IP地址',
                  `ip_city` varchar(150) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT 'IP所属城市',
                  `os` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '操作系统',
                  `browser` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '浏览器',
                  `user_agent` varchar(360) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT 'User-Agent',
                  `create_user` int(11) unsigned DEFAULT 0 COMMENT '添加人',
                  `create_time` int(11) unsigned DEFAULT 0 COMMENT '添加时间',
                  `mark` tinyint(1) unsigned NOT NULL DEFAULT 1 COMMENT '有效标识：1正常 0删除',
                  PRIMARY KEY (`id`) USING BTREE
                ) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COMMENT='系统行为日志表';";
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
        if (!self::$title) {
            // 操作控制器名
            $menuModel = new Menu();
            $info = $menuModel->getOne([
                ['path', '=', request()->url()],
            ]);
            if ($info) {
                if ($info['type'] == 1) {
                    $menuInfo = $menuModel->getInfo($info['pid']);
                    self::$title = $menuInfo['title'];
                } else {
                    self::$title = $info['title'];
                }
            }
        }

        // 用户ID
        $userId = 0;
        // 获取Token
        $token = request()->header("Authorization");
        if ($token && strpos($token, 'Bearer ') !== false) {
            $token = str_replace("Bearer ", null, $token);
            // JWT解密token
            $jwt = new \Jwt();
            $userId = $jwt->verifyToken($token);
        }

        // 日志数据
        $data = [
            'username' => '管理员',
            'module' => app('http')->getName(),
            'method' => request()->method(),
            'url' => request()->url(true), // 获取完成URL
            'param' => request()->param() ? json_encode(request()->param()) : '',
            'title' => self::$title ? self::$title : '操作日志',
            'type' => self::$title == '登录系统' ? 1 : (self::$title == '注销系统' ? 2 : 3),
            'content' => self::$content,
            'ip' => request()->ip(),
//            'ip_city' => get_ip_city(request()->ip()),
            'os' => get_os(),
            'browser' => get_browse(),
            'user_agent' => request()->server('HTTP_USER_AGENT'),
            'create_user' => empty($userId) ? 0 : $userId,
            'create_time' => time(),
        ];
        // 日志入库
        self::insert($data);
    }

}