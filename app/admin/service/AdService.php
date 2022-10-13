<?php namespace app\admin\service;


use app\admin\model\Ad;

/**
* 广告管理-服务类
* @author PENGKING
* @since: 2022/10/12
* Class AdService
* @package app\admin\service
*/
class AdService extends BaseService
{
/**
* 构造函数
* LevelService constructor.
*/
public function __construct()
{
$this->model = new Ad();
}

/**
* 获取数据列表
* @return array
* @since 2022/10/12
* @author PENGKING
*/
public function getList()
{
$param = request()->param();

// 查询条件
$map = [];

    
        // 广告标题
        $title = isset($param['title']) ? trim($param['title']) : '';
        if ($title) {
        $map[] = ['title', 'like', "%{$title}%"];
        }
        
        // 广告格式
        $type = isset($param['type']) ? (int)$param['type'] : 0;
        if ($type) {
        $map[] = ['type', '=', $type];
        }
        
        // 状态
        $status = isset($param['status']) ? (int)$param['status'] : 0;
        if ($status) {
        $map[] = ['status', '=', $status];
        }
    
return parent::getList($map); // TODO: Change the autogenerated stub
}

    /**
    * 添加或编辑
    * @return array
    * @since 2022/10/12
    * @author PENGKING
    */
    public function edit()
    {
    // 参数
    $data = request()->param();
                                                
            // 广告图片处理
            $cover = getter($data, 'cover');
            if (!empty($cover)) {
            if (strpos($cover, "temp") !== false) {
            $data['cover'] = save_image($cover, 'ad');
            } else {
            $data['cover'] = str_replace(IMG_URL, "", $cover);
            }
            }
                                                                                                                                                                                                            
    return parent::edit($data); // TODO: Change the autogenerated stub
    }

                                                                                                                                                                                                                                                                        
/**
* 获取数据列表
* @return array
* @since 2022/10/12* @author PENGKING*/
public function getListSelect()
{
return parent::getListSelect();
}

}