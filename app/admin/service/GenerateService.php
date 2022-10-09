<?php


namespace app\admin\service;

use app\admin\model\Menu;
use think\facade\Db;

/**
 * 代码生成器-服务类
 * @author PENGKING
 * @since 2020/11/15
 * Class GenerateService
 * @package app\admin\service
 */
class GenerateService extends BaseService
{
    /**
     * 获取数据表
     * @return array
     * @since 2020/11/15
     * @author PENGKING
     */
    public function getList()
    {
        // 查询SQL
        $sql = "SHOW TABLE STATUS WHERE 1";
        // 请求参数
        $param = request()->param();
        // 表名称
        $name = getter($param, "name");
        if ($name) {
            $sql .= " AND NAME like \"%{$name}%\" ";
        }
        // 表描述
        $comment = getter($param, "comment");
        if ($comment) {
            $sql .= " AND COMMENT like \"%{$comment}%\" ";
        }
        $list = Db::query($sql);
        $list = array_map('array_change_key_case', $list);

        return $message = array(
            "msg" => '操作成功',
            "code" => 0,
            "data" => $list,
            "count" => count($list),
        );
    }

    /**
     * 一键生成
     * @param $param 参数
     * @return array
     * @throws \think\db\exception\BindParamException
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @since 2021/12/7
     * @author PENGKING
     */
    public function generate($param)
    {
        // 数据表名
        $name = getter($param, "name");
        if (!$name) {
            return message("数据表名称不能为空", false);
        }

        // 数据表名称
        $tableName = str_replace(DB_PREFIX, null, $name);
        // 模型名称
        $moduleName = str_replace(' ', null, ucwords(strtolower(str_replace('_', ' ', $tableName))));
        // 控制器名称
        $controllerName = ucfirst(strtolower(str_replace('_', '', $tableName)));
        // 数据表描述
        $comment = getter($param, "comment");
        if (!$comment) {
            return message("数据表名称不能为空", false);
        }
        // 设置表名
        $menuName = $comment;
        // 去除表描述中的`表`
        if (strpos($comment, "表") !== false) {
            $comment = str_replace("表", null, $comment);
            $menuName = $comment;
        }
        // 去除表描述中的`管理`
        if (strpos($comment, "管理") !== false) {
            $comment = str_replace("管理", null, $comment);
            $menuName = $comment;
        }
        // 作者花名
        $author = "PENGKING";
        // 生成模型
        $this->generateModel($author, $moduleName, $comment, $tableName);
        // 生成服务类
        $this->generateService($author, $moduleName, $comment, $tableName);

        // 生成控制器
        $this->generateController($author, $controllerName, $comment, $tableName);
        // 生成列表文件
        $this->generateVue($comment, $moduleName, $tableName);

        // 生成菜单
        $this->generateMenu(strtolower(str_replace('_', '', $tableName)), $menuName);

        return message("模块生成成功");
    }

    /**
     * 生成模型
     * @param $author 作者
     * @param $moduleName 模块名
     * @param $moduleTitle 模块标题
     * @param $tableName 数据表名
     * @author PENGKING
     * @since 2020/7/15
     */
    public function generateModel($author, $moduleName, $moduleTitle, $tableName)
    {

        // 判断是否有图片
        $moduleImage = false;
        // 获取数据列表
        $columnList = $this->getColumnList(DB_PREFIX . "{$tableName}");

        if ($columnList) {
            foreach ($columnList as &$val) {
                // 图片字段处理
                if (strpos($val['columnName'], "cover") !== false ||
                    strpos($val['columnName'], "avatar") !== false ||
                    strpos($val['columnName'], "image") !== false ||
                    strpos($val['columnName'], "logo") !== false ||
                    strpos($val['columnName'], "pic") !== false) {
                    $val['columnImage'] = true;
                    $moduleImage = true;
                }
            }
        }
        // 参数
        $param = [
            'author' => $author,
            'since' => date('Y/m/d', time()),
            'moduleName' => $moduleName,
            'moduleTitle' => $moduleTitle,
            'tableName' => $tableName,
            'columnList' => $columnList,
            'moduleImage' => $moduleImage,
        ];
        // 存储目录
        $FILE_PATH = APP_PATH . '/admin/model/';

        if (!is_dir($FILE_PATH)) {
            // 创建目录并赋予权限
            mkdir($FILE_PATH, 0777, true);
        }
        // 文件名
        $filename = $FILE_PATH . "/{$moduleName}.php";
        // 拆解参数
        extract($param);
        // 开启缓冲区
        ob_start();
        // 引入模板文件
        require(APP_PATH . '/admin/templates/model.tpl.php');
        // 获取缓冲区内容
        $out = ob_get_clean();
        // 打开文件
        $f = fopen($filename, 'w');
        // 写入内容
        fwrite($f, "<?php " . $out);
        // 关闭
        fclose($f);
    }

    /**
     * 生成服务类
     * @param $author 作者
     * @param $moduleName 模块名
     * @param $moduleTitle 模块标题
     * @param $tableName 数据表
     * @since 2020/7/15
     * @author PENGKING
     */
    public function generateService($author, $moduleName, $moduleTitle, $tableName)
    {
        // 判断是否有图片
        $moduleImage = false;
        // 查询条件
        $queryList = [];
        // 获取数据列表
        $columnList = $this->getColumnList(DB_PREFIX . "{$tableName}");

        if ($columnList) {
            foreach ($columnList as &$val) {
                // 图片字段处理
                if (strpos($val['columnName'], "cover") !== false ||
                    strpos($val['columnName'], "avatar") !== false ||
                    strpos($val['columnName'], "image") !== false ||
                    strpos($val['columnName'], "logo") !== false ||
                    strpos($val['columnName'], "pic") !== false) {
                    $val['columnImage'] = true;
                    $moduleImage = true;
                }
                // 下拉筛选
                if (isset($val['columnValue'])) {
                    $queryList[] = $val;
                }
                // 名称
                if ($val['columnName'] == "name") {
                    $queryList[] = $val;
                }
                // 标题
                if ($val['columnName'] == "title") {
                    $queryList[] = $val;
                }
            }
        }

        // 参数
        $param = [
            'author' => $author,
            'since' => date('Y/m/d', time()),
            'moduleName' => $moduleName,
            'moduleTitle' => $moduleTitle,
            'columnList' => $columnList,
            'moduleImage' => $moduleImage,
            'queryList' => $queryList,
        ];
        // 存储目录
        $FILE_PATH = APP_PATH . '/admin/service/';
        if (!is_dir($FILE_PATH)) {
            // 创建目录并赋予权限
            mkdir($FILE_PATH, 0777, true);
        }
        // 文件名
        $filename = $FILE_PATH . "/{$moduleName}Service.php";
        // 拆解参数
        extract($param);
        // 开启缓冲区
        ob_start();
        // 引入模板文件
        require(APP_PATH . '/admin/templates/service.tpl.php');
        // 获取缓冲区内容
        $out = ob_get_clean();
        // 打开文件
        $f = fopen($filename, 'w');
        // 写入内容
        fwrite($f, "<?php " . $out);
        // 关闭
        fclose($f);
    }

    /**
     * 生成控制器
     * @param $author 作者
     * @param $moduleName 模块名
     * @param $moduleTitle 模块标题
     * @param $tableName 数据表名
     * @since 2020/7/15
     * @author PENGKING
     */
    public function generateController($author, $moduleName, $moduleTitle, $tableName)
    {
        // 获取数据列表
        $columnList = $this->getColumnList(DB_PREFIX . "{$tableName}");
        // 参数
        $param = [
            'author' => $author,
            'since' => date('Y/m/d', time()),
            'moduleName' => $moduleName,
            'moduleTitle' => $moduleTitle,
            'columnList' => $columnList,
        ];

        // 存储目录
        $FILE_PATH = APP_PATH . '/admin/controller/';
        if (!is_dir($FILE_PATH)) {
            // 创建目录并赋予权限
            mkdir($FILE_PATH, 0777, true);
        }
        // 文件名
        $filename = $FILE_PATH . "/{$param['moduleName']}.php";
        // 拆解参数
        extract($param);
        // 开启缓冲区
        ob_start();
        // 引入模板文件
        require(APP_PATH . '/admin/templates/controller.tpl.php');
        // 获取缓冲区内容
        $out = ob_get_clean();
        // 打开文件
        $f = fopen($filename, 'w');
        // 写入内容
        fwrite($f, "<?php " . $out);
        // 关闭
        fclose($f);
    }

    /**
     * 生成列表文件
     * @param $moduleTitle 模块标题
     * @param $tableName 数据表名
     * @author PENGKING
     * @since 2020/7/15
     */
    public function generateVue($moduleTitle, $moduleName, $tableName)
    {
        // 获取数据列表
        $columnList = $this->getColumnList(DB_PREFIX . "{$tableName}");

        $queryList = [];
        if ($columnList) {
            foreach ($columnList as $val) {
                // 下拉筛选
                if (isset($val['columnValue'])) {
                    $queryList[] = $val;
                }
                // 名称
                if ($val['columnName'] == "name") {
                    $queryList[] = $val;
                }
                // 标题
                if ($val['columnName'] == "title") {
                    $queryList[] = $val;
                }
            }
        }
        // 获取编辑表单数据源
        // 剔除非表单呈现字段
        $arrayList = [];
        $tempList = [];
        $rowList = [];
        $columnSplit = false;
        if ($columnList) {
            foreach ($columnList as $val) {
                // 记录ID
                if ($val['columnName'] == "id") {
                    continue;
                }
                // 表单唯一值
                if ($val['columnName'] == "guid") {
                    continue;
                }
                // 前端用户
                if ($val['columnName'] == "uu_guid") {
                    continue;
                }
                // 后端编码
                if ($val['columnName'] == "code") {
                    continue;
                }
                // 创建人
                if ($val['columnName'] == "create_user") {
                    continue;
                }
                // 创建时间
                if ($val['columnName'] == "create_time") {
                    continue;
                }
                // 更新人
                if ($val['columnName'] == "update_user") {
                    continue;
                }
                // 更新时间
                if ($val['columnName'] == "update_time") {
                    continue;
                }
                // 有效标识
                if ($val['columnName'] == "mark") {
                    continue;
                }
                // 图片字段处理
                if (strpos($val['columnName'], "cover") !== false ||
                    strpos($val['columnName'], "avatar") !== false ||
                    strpos($val['columnName'], "image") !== false ||
                    strpos($val['columnName'], "images") !== false ||
                    strpos($val['columnName'], "logo") !== false ||
                    strpos($val['columnName'], "pic") !== false) {
                    $val['columnImage'] = true;
                    $tempList[] = $val;
                    continue;
                }
                // 多行文本输入框
                if (strpos($val['columnName'], "note") !== false ||
                    strpos($val['columnName'], "content") !== false ||
                    strpos($val['columnName'], "description") !== false ||
                    strpos($val['columnName'], "intro") !== false) {
                    $val['columnRow'] = true;
                    $rowList[] = $val;
                    continue;
                }
                // 由于目前时间字段采用int类型，所以这里根据字段描述模糊确定是否是时间选择
                if (strpos($val['columnComment'], "时间") !== false) {
                    $val['dataType'] = 'datetime';
                } elseif (strpos($val['columnComment'], "日期") !== false) {
                    $val['dataType'] = 'date';
                }

                // 图片字段处理
                if (strpos($val['columnName'], "cover") !== false ||
                    strpos($val['columnName'], "avatar") !== false ||
                    strpos($val['columnName'], "image") !== false ||
                    strpos($val['columnName'], "images") !== false ||
                    strpos($val['columnName'], "logo") !== false ||
                    strpos($val['columnName'], "pic") !== false) {
                    $val['columnImage'] = true;
                }
                $arrayList[] = $val;
            }
        }

        // 初始化数组
        $dataList = [];
        if (count($arrayList) + count($tempList) + count($rowList) > 105) {
            // 分两个一组
            $dataList = array_chunk($arrayList, 2);
            // 图片
            if (count($tempList) > 0) {
                array_unshift($dataList, $tempList);
            }
            // 多行文本
            if (count($rowList) > 0) {
                foreach ($rowList as $val) {
                    $dataList[][] = $val;
                }
            }
            $columnList = $dataList;
            $columnSplit = true;
        } else {

            $dataList = $arrayList;
            // 图片
            foreach ($tempList as $val) {
                array_unshift($dataList, $val);
            }
            // 多行文本
            if (count($rowList) > 0) {
                foreach ($rowList as $val) {
                    $dataList[] = $val;
                }
            }
            $columnList = $dataList;
            $columnSplit = false;
        }
        // 参数
        $param = [
            'entityName' => $moduleName,
            'moduleName' => strtolower($moduleName),//转小写
            'moduleTitle' => $moduleTitle,
            'queryList' => $queryList,
            'columnList' => $columnList,
        ];
        // 存储目录
        if (strpos($tableName, "_") !== false) {
            $tableName = str_replace('_', null, $tableName);
        }
        $FILE_PATH = ROOT_PATH . '/avui/src/views/tool/example/' . strtolower($tableName);

        if (!is_dir($FILE_PATH)) {
            // 创建目录并赋予权限
            mkdir($FILE_PATH, 0777, true);
        }
        // 文件名
        $filename = $FILE_PATH . "/index.vue";

        // 拆解参数
        extract($param);
        // 开启缓冲区
        ob_start();
        // 引入模板文件
        require(APP_PATH . '/admin/templates/index.tpl.php');

        // 获取缓冲区内容
        $out = ob_get_clean();
        // 打开文件
        $f = fopen($filename, 'w');
        // 写入内容
        fwrite($f, $out);
        // 关闭
        fclose($f);

        // 文件名
        $filename2 = $FILE_PATH . "/" . strtolower($tableName) . "-edit.vue";
        // 拆解参数
        extract($param);
        // 开启缓冲区
        ob_start();
        // 引入模板文件
        require(APP_PATH . '/admin/templates/edit.tpl.php');
        // 获取缓冲区内容
        $out2 = ob_get_clean();
        // 打开文件
        $f2 = fopen($filename2, 'w');
        // 写入内容
        fwrite($f2, $out2);
        // 关闭
        fclose($f2);
    }

    /**
     * 获取表字段列表
     * @param $tableName 数据表名
     * @return array
     * @author PENGKING
     * @since 2020/7/15
     */
    public function getColumnList($tableName)
    {
        // 获取表列字段信息
        $columnList = Db::query("SELECT COLUMN_NAME,COLUMN_DEFAULT,DATA_TYPE,COLUMN_TYPE,COLUMN_COMMENT FROM information_schema.`COLUMNS` where TABLE_SCHEMA = '" . env('database.database') . "' AND TABLE_NAME = '{$tableName}'");
        $fields = [];
        if ($columnList) {
            foreach ($columnList as $val) {
                $column = [];
                // 列名称
                $column['columnName'] = $val['COLUMN_NAME'];
                // 列默认值
                $column['columnDefault'] = $val['COLUMN_DEFAULT'];
                // 数据类型
                $column['dataType'] = $val['DATA_TYPE'];
                // 列描述
                if (strpos($val['COLUMN_COMMENT'], '：') !== false) {
                    $item = explode("：", $val['COLUMN_COMMENT']);
                    $column['columnComment'] = $item[0];

                    // 拆解字段描述
                    $param = explode(" ", $item[1]);
                    $columnValue = [];
                    $columnValueList = [];
                    $typeList = ["", "success", "warning", "danger", "info", "", "success", "warning", "danger", "info", "", "success", "warning", "danger", "info"];
                    foreach ($param as $ko => $vo) {
                        // 键值
                        $key = preg_replace('/[^0-9]/', '', $vo);
                        // 键值内容
                        $value = str_replace($key, null, $vo);
                        $columnValue[] = [
                            'value' => $key,
                            'name' => $value,
                            'type' => $typeList[$ko],
                        ];//"{$key}={$value}";
                        $columnValueList[] = $value;
                    }
                    $column['columnValue'] = $columnValue;//implode(',', $columnValue);
                    if ($val['COLUMN_NAME'] == "status" || substr($val['COLUMN_NAME'], 0, 3) == "is_") {
                        $column['columnSwitch'] = true;
                        $column['columnSwitchValue'] = implode('|', $columnValueList);
                        if ($val['COLUMN_NAME'] == "status") {
                            $column['columnSwitchName'] = "status";
                        } else {
                            $column['columnSwitchName'] = 'set' . str_replace(' ', null, ucwords(strtolower(str_replace('_', ' ', $val['COLUMN_NAME']))));
                        }
                    } else {
                        $column['columnSwitch'] = false;
                    }
                } else {
                    $column['columnComment'] = $val['COLUMN_COMMENT'];
                }
                $fields[] = $column;
            }
        }
        return $fields;
    }

    /**
     * 生成模块菜单
     * @param $moduleName 模块名称
     * @param $moduleTitle 模块标题
     * @throws \think\db\exception\BindParamException
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\exception\PDOException
     * @since 2020/7/16
     * @author PENGKING
     */
    public function generateMenu($moduleName, $moduleTitle)
    {
        // 查询已存在的菜单
        $menuModel = new Menu();
        $info = $menuModel->getOne([
            ['permission', '=', "sys:{$moduleName}:view"],
        ]);
        $menu = [
            'id' => isset($info['id']) ? intval($info['id']) : 0,
            'title' => $moduleTitle,
            'icon' => 'UngroupOutlined',
            'path' => "/tool/example/{$moduleName}",
            'component' => "/tool/example/{$moduleName}",
            'pid' => 164,
            'type' => 0,
            'hide' => 0,
            'permission' => "sys:{$moduleName}:view",
        ];
        $result = $menuModel->edit($menu);
        if ($result) {
            // 去除表描述中的`管理`
            if (strpos($moduleTitle, "管理") !== false) {
                $moduleTitle = str_replace("管理", null, $moduleTitle);
            }

            // 删除以存在的节点
            $menuModel = new Menu();
            $funcIds = $menuModel
                ->where("pid", $result)
                ->where("type", 1)
                ->column("id");
            $menuModel->deleteDAll($funcIds, true);

            // 创建节点
            $funcList = [1, 5, 10, 15, 25, 30];
            foreach ($funcList as $val) {
                $data = [];
                $data['pid'] = $result;
                $data['type'] = 1;
                $data['status'] = 1;
                $data['sort'] = intval($val);
                $data['target'] = "_self";
                if ($val == 1) {
                    // 查询
                    $data['title'] = "查询" . $moduleTitle;
                    $data['path'] = "/{$moduleName}/index";
                    $data['permission'] = "sys:{$moduleName}:index";
                } else if ($val == 5) {
                    // 添加
                    $data['title'] = "添加" . $moduleTitle;
                    $data['path'] = "/{$moduleName}/edit";
                    $data['permission'] = "sys:{$moduleName}:add";
                } else if ($val == 10) {
                    // 修改
                    $data['title'] = "修改" . $moduleTitle;
                    $data['path'] = "/{$moduleName}/edit";
                    $data['permission'] = "sys:{$moduleName}:edit";
                } else if ($val == 15) {
                    // 删除
                    $data['title'] = "删除" . $moduleTitle;
                    $data['path'] = "/{$moduleName}/delete";
                    $data['permission'] = "sys:{$moduleName}:delete";
                } else if ($val == 20) {
                    // 详情
                    $data['title'] = $moduleTitle . "详情";
                    $data['path'] = "/{$moduleName}/detail";
                    $data['permission'] = "sys:{$moduleName}:detail";
                } else if ($val == 25) {
                    // 状态
                    $data['title'] = "设置状态";
                    $data['path'] = "/{$moduleName}/status";
                    $data['permission'] = "sys:{$moduleName}:status";
                } else if ($val == 30) {
                    // 批量删除
                    $data['title'] = "批量删除";
                    $data['path'] = "/{$moduleName}/dall";
                    $data['permission'] = "sys:{$moduleName}:dall";
                }
                if (empty($data['title'])) {
                    continue;
                }
                $menuModel = new Menu();
                $menuModel->edit($data);
            }
        }
    }

}