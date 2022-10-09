<?php


namespace app\admin\model;

use think\facade\Db;


/**
 * 文章-模型
 * @author PENGKING
 * @since 2021/6/4
 * Class Article
 * @package app\admin\model
 */
class Article extends BaseModel
{
    // 设置数据表
    protected $name = "article";

    /**
     * 获取缓存信息
     * @param int $id
     * @return 数据信息|mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @author PENGKING
     * @since 2021/6/4
     */
    public function getInfo($id)
    {
        $info = parent::getInfo($id); // TODO: Change the autogenerated stub
        if ($info) {
            // 文章封面
            if ($info['cover']) {
                $info['cover'] = get_image_url($info['cover']);
            }

            // 获取栏目
            if ($info['cate_id']) {
                $itemCateModel = new ItemCate();
                $cateName = $itemCateModel->getCateName($info['cate_id'], ">>");
                $info['cate_name'] = $cateName;
            }

            // 获取分表
            $table = $this->getArticleTable($id, false);
            $articleModel = Db::name($table);
            $articleInfo = $articleModel->find($id);
            if ($articleInfo['content']) {
                while (strstr($articleInfo['content'], "[IMG_URL]")) {
                    $articleInfo['content'] = str_replace("[IMG_URL]", IMG_URL, $articleInfo['content']);
                }
            }
            if (is_array($articleInfo)) {
                $info = array_merge($info, $articleInfo);
            }

            // 文章图集
            if (isset($info['imgs']) && $info['imgs']) {
                $imgsList = unserialize($info['imgs']);
                foreach ($imgsList as &$val) {
                    $val = get_image_url($val);
                }
                $info['imgs'] = $imgsList;
            }
        }
        return $info;
    }

    /**
     * 添加或编辑
     * @param array $data 数据源
     * @param string $error 错误信息
     * @param bool $isSql 打印SQL
     * @return bool|int|string
     * @throws \think\db\exception\BindParamException
     * @since 2021/6/4
     * @author PENGKING
     */
    public function edit($data = [], &$error = '', $isSql = false)
    {
        // 获取数据表字段
        $column = $this->getFieldsList($this->name);
        $item = [];
        foreach ($data as $key => $val) {
            if (!in_array($key, array_keys($column))) {
                $item[$key] = $val;
                unset($data[$key]);
            }
        }

        // 开启事务
//        $this->startTrans();
        $rowId = parent::edit($data, $error, $isSql);
        if (!$rowId) {
            //事务回滚
//            $this->rollback();
            return false;
        }
        $result = $this->saveArticleInfo($rowId, $item);
        if (!$result) {
            // 事务回滚
//            $this->rollback();
            return false;
        }
        // 提交事务
//        $this->commit();
        return $rowId;
    }

    /**
     * 保存文章信息
     * @param $id 记录ID
     * @param $item 附表数据
     * @return bool
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     * @author PENGKING
     * @since 2021/6/4
     */
    public function saveArticleInfo($id, $item)
    {
        $table = $this->getArticleTable($id);
        $info = $this->where(['id' => $id])->table($table)->find();

        $data = [];
        if (!$info) {
            $data['id'] = $id;
        }
        $data['content'] = $item['content'];
        if ($item['guide']) {
            $data['guide'] = $item['guide'];
        }
        if ($item['imgs']) {
            $data['imgs'] = $item['imgs'];
        }

        //获取分表模型
        $table = $this->getArticleTable($id, false);
        $articleModel = Db::name($table);
        if ($info['id']) {
            $result = $articleModel->where('id', $id)->update($data);
        } else {
            $result = $articleModel->insert($data);
        }
        if ($result !== false) {
            return true;
        }
        return false;
    }

    /**
     * 获取附表名称
     * @param $id
     * @param bool $isPrefix
     * @return string
     * @since 2021/6/4
     * @author PENGKING
     */
    public function getArticleTable($id, $isPrefix = true)
    {
        $table = substr($id, -1, 1);
        $table = "article_{$table}";
        if ($isPrefix) {
            $table = DB_PREFIX . $table;
        }
        return $table;
    }

}