<?php


namespace app\admin\service;

use app\admin\model\Article;

/**
 * 文章管理-服务类
 * @author PENGKING
 * @since 2021/6/4
 * Class ArticleService
 * @package app\admin\service
 */
class ArticleService extends BaseService
{
    /**
     * 构造函数
     * @author PENGKING
     * @since 2021/6/4
     * ArticleService constructor.
     */
    public function __construct()
    {
        $this->model = new Article();
    }

    /**
     * 添加或编辑
     * @return array
     * @since 2021/6/4
     * @author PENGKING
     */
    public function edit()
    {
        $data = request()->param();
        // 封面处理
        $cover = getter($data, "cover");
        if (!empty($cover)) {
            if (strpos($cover, "temp") !== false) {
                $data['cover'] = save_image($cover, 'article');
            } else {
                $data['cover'] = str_replace(IMG_URL, "", $cover);
            }
        }

        // 文章图集
        $imgStr = [];
        $imgsList = isset($data['imgs']) ? $data['imgs'] : [];
        if ($imgsList) {
            foreach ($imgsList as $val) {
                if (strpos($val, "temp")) {
                    //新上传图片
                    $imgStr[] = save_image($val, 'article');
                } else {
                    //过滤已上传图片
                    $imgStr[] = str_replace(IMG_URL, "", $val);
                }
            }
        }
        $data['imgs'] = serialize($imgStr);
        //内容处理
        save_image_content($data['content'], $data['title'], "article");
        return parent::edit($data); // TODO: Change the autogenerated stub
    }

    public function status()
    {
        $data = request()->param();
        // 记录ID
        $id = getter($data, "id", 0);
        if (!$id) {
            return message('记录ID不能为空', false);
        }
        // 状态
        $status = getter($data, "status", 0);
        if (!$status) {
            return message('记录状态不能为空', false);
        }
        $rowId = $this->model->update(['status' => $status], ['id' => $id]);
        if (!$rowId) {
            return message("设置状态失败", false);
        }
        // 删除缓存
        $this->model->cacheDelete($rowId);
        return message();
    }

}