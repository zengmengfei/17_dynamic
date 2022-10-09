<?php


namespace app\admin\controller;

use app\admin\service\GenerateService;

/**
 * 代码生成器-控制器
 * @author PENGKING
 * @since 2020/11/15
 * Class Generate
 * @package app\admin\controller
 */
class Generate extends Backend
{
    /**
     * 初始化
     * @author PENGKING
     * @since 2020/11/15
     */
    protected function initialize()
    {
        parent::initialize(); // TODO: Change the autogenerated stub
        $this->service = new GenerateService();
    }

    /**
     * 单表一键生成
     * @return mixed
     * @since 2020/11/15
     * @author PENGKING
     */
    public function generate()
    {
        // 参数
        $param = request()->all();
        $result = $this->service->generate($param);
        return $result;
    }

    /**
     * 多表批量一键生成
     * @return mixed
     * @since 2021/12/7
     * @author PENGKING
     */
    public function batchGenerate()
    {
        // 参数
        $param = request()->all();
        // 表信息
        $tables = isset($param['tables']) ? $param['tables'] : [];
        if (empty($tables)) {
            return message("请选择数据表", false);
        }
        foreach ($tables as $val) {
            $item = explode(",", $val);
            $data = [
                'name' => $item[0],
                'comment' => $item[1],
            ];
            $this->service->generate($data);
        }
        return message(sprintf("本次共生成【%d】个模块", count($tables)));
    }

}