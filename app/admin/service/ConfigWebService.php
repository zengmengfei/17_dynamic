<?php


namespace app\admin\service;

use app\admin\model\Config;
use app\admin\model\ConfigData;

/**
 * 系统配置-服务类
 * @author PENGKING
 * @since 2021/6/25
 * Class ConfigWebService
 * @package app\admin\service
 */
class ConfigWebService extends BaseService
{
    /**
     * 构造函数
     * @author PENGKING
     * @since 2021/6/25
     * ConfigWebService constructor.
     */
    public function __construct()
    {
        $this->model = new Config();
    }

    /**
     * 获取配置数据列表
     * @return array
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     * @author PENGKING
     * @since 2021/6/25
     */
    public function getList()
    {
        // 获取配置列表
        $configList = $this->model
            ->where("mark", "=", 1)
            ->order("sort asc")
            ->select()
            ->toArray();
        $list = [];
        if ($configList) {
            $configDataModel = new ConfigData();
            foreach ($configList as &$val) {
                $dataList = $configDataModel
                    ->where("config_id", "=", $val['id'])
                    ->where("mark", "=", 1)
                    ->order("sort asc")
                    ->select()
                    ->toArray();
                foreach ($dataList as &$v) {
                    if ($v['type'] == "array" || $v['type'] == "radio" || $v['type'] == "select") {
                        $data = preg_split('/[\r\n]+/s', $v['options']);
                        if ($data) {
                            $arr = [];
                            foreach ($data as $vt) {
                                $value = preg_split('/[:：]+/s', $vt);
                                $arr[$value[0]] = $value[1];
                            }
                            $v['param'] = $arr;
                        }
                    }
                    // 复选框
                    if ($v['type'] == "checkbox") {
                        // 组件值
                        $v['value'] = explode(",", $v['value']);
                        // 组件选项
                        $data = preg_split('/[\r\n]+/s', $v['options']);
                        if ($data) {
                            $arr = [];
                            foreach ($data as $vt) {
                                $value = preg_split('/[:：]+/s', $vt);
                                $arr[] = [
                                    'label' => $value[1],
                                    'value' => $value[0]
                                ];
                            }
                            $v['param'] = $arr;
                        }
                    }
                    // 单图
                    if ($v['type'] == "image" && !empty($v['value'])) {
                        $v['value'] = get_image_url($v['value']);
                    }
                    // 多图
                    if ($v['type'] == "images") {
                        $urlList = explode(",", $v['value']);
                        $itemList = [];
                        foreach ($urlList as $vt) {
                            if (empty($vt)) {
                                continue;
                            }
                            $itemList[] = get_image_url($vt);
                        }
                        $v['value'] = $itemList;
                    }
                }
                $item = array();
                $item['config_id'] = $val['id'];
                $item['config_name'] = $val['name'];
                $item['item_list'] = $dataList;
                $list[] = $item;
            }
        }
        return message("操作成功", true, $list);
    }

    /**
     * 保存表单信息
     * @return array
     * @throws \think\db\exception\BindParamException
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     * @since 2021/6/26
     * @author PENGKING
     */
    public function edit()
    {
        // 参数
        $data = request()->param();
        if (!$data) {
            return message("参数不能为空", false);
        }
        foreach ($data as $key => &$val) {
            // 图片处理
            $preg = "/^http(s)?:\\/\\/.+/";
            if (is_string($val) && preg_match($preg, $val)) {
                if (strpos($val, "temp") !== false) {
                    $val = save_image($val, 'config');
                } else {
                    $val = str_replace(IMG_URL, "", $val);
                }
            }
            if (is_array($val)) {
                $item = [];
                foreach ($val as $vt) {
                    $preg = "/^http(s)?:\\/\\/.+/";
                    if (preg_match($preg, $vt)) {
                        if (strpos($vt, "temp") !== false) {
                            $vt = save_image($vt, 'config');
                        } else {
                            $vt = str_replace(IMG_URL, "", $vt);
                        }
                        $item[] = $vt;
                    } else {
                        $item[] = $vt;
                    }
                }
                $val = !empty($item) ? implode(",", $item) : "";
            }
            $configDataModel = new ConfigData();
            $result = $configDataModel->where("code", "=", $key)->find();
            $info = [];
            $info['id'] = $result['id'];
            $info['value'] = !empty($val) ? $val : "";
            $configDataModel->edit($info);
        }
        return message();
    }

}