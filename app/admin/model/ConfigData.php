<?php


namespace app\admin\model;

/**
 * 配置数据-模型
 * @author PENGKING
 * @since 2020/11/15
 * Class Config
 * @package app\admin\model
 */
class ConfigData extends BaseModel
{
    // 设置数据表名
    protected $name = "config_data";

    /**
     * 获取记录信息
     * @param int $id 记录ID
     * @return 数据信息|mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @author PENGKING
     * @since 2021/12/17
     */
    public function getInfo($id)
    {
        $info = parent::getInfo($id);
        if ($info) {
            // 单图
            if ($info['type'] == "image") {
                $info["value"] = get_image_url($info["value"]);
            }
            // 多图
            if ($info["type"] == "images") {
                $itemArr = explode(",", $info['value']);
                if (!empty($itemArr)) {
                    foreach ($itemArr as &$val) {
                        $val = get_image_url($val);
                    }
                }
                $info["value"] = $itemArr;
            }
        }
        return $info;
    }

}