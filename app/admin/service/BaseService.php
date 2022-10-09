<?php
namespace app\admin\service;

use think\Db;

/**
 * 服务基类
 * @author PENGKING
 * @since 2020/11/14
 * Class BaseService
 * @package app\admin\service
 */
class BaseService
{
    // 模型
    protected $model;

    /**
     * 获取数据列表
     * @return array
     * @since 2020/11/14
     * @author PENGKING
     */
    public function getList()
    {
        // 初始化变量
        $map = [];
        $sort = 'id desc';
        $is_sql = 0;

        // 获取参数
        $argList = func_get_args();
        if (!empty($argList)) {
            // 查询条件
            $map = (isset($argList[0]) && !empty($argList[0])) ? $argList[0] : [];
            // 排序
            $sort = (isset($argList[1]) && !empty($argList[1])) ? $argList[1] : 'id desc';
            // 是否打印SQL
            $is_sql = isset($argList[2]) ? isset($argList[2]) : 0;
        }

        // 常规查询条件
        $param = request()->param();
        if ($param) {
            // 筛选名称
            if (isset($param['name']) && $param['name']) {
                $map[] = ['name', 'like', "%{$param['name']}%"];
            }
            // 筛选标题
            if (isset($param['title']) && $param['title']) {
                $map[] = ['title', 'like', "%{$param['title']}%"];
            }
            // 筛选类型
            if (isset($param['type']) && $param['type']) {
                $map[] = ['type', '=', $param['type']];
            }
            // 筛选状态
            if (isset($param['status']) && $param['status']) {
                $map[] = ['status', '=', $param['status']];
            }
            // 手机号码
            if (isset($param['mobile']) && $param['mobile']) {
                $map[] = ['mobile', '=', $param['mobile']];
            }
        }

        // 设置查询条件
        if (is_array($map)) {
            $map[] = ['mark', '=', 1];
        } elseif ($map) {
            $map .= " AND mark=1 ";
        } else {
            $map .= " mark=1 ";
        }
        //获取登录账号
        $admin_info = get_admin_info(user_id);
        if($admin_info['role_id'] !=1){
            //判断是否存在code
            if(!empty($this->model->getFields()['code'])){
                $map = array(
                    array(
                        "code","in",get_son_code($admin_info['username'])
                    )
                );
            }
        }


        $result = $this->model->where($map)->order($sort)->page(PAGE, PERPAGE)->column("id");

        // 打印SQL
        if ($is_sql) {
            echo $this->model->getLastSql();
        }

        $list = [];
        if (is_array($result)) {
            foreach ($result as $val) {
                $info = $this->model->getInfo($val);
                $list[] = $info;
            }
        }

        //获取数据总数
        $count = $this->model->where($map)->count();

        //返回结果
        $message = array(
            "msg" => '操作成功',
            "code" => 0,
            "data" => $list,
            "count" => $count,
        );
        return json($message);
    }

    /**
     * 获取记录详情
     * @return array
     * @since 2020/11/15
     * @author PENGKING
     */
    public function info()
    {
        // 记录ID
        $id = request()->param("id", 0);
        $info = [];
        if ($id) {
            $info = $this->model->getInfo($id);
        }
        return message("操作成功", true, $info);
    }

    /**
     * 添加或编辑
     * @return array
     * @since 2020/11/14
     * @author PENGKING
     */
    public function edit()
    {
        // 获取参数
        $argList = func_get_args();
        // 查询条件
        $data = isset($argList[0]) ? $argList[0] : [];
        // 是否打印SQL
        $is_sql = isset($argList[1]) ? $argList[1] : false;
        if (!$data) {
            $data = request()->param();
        }
        $error = '';
        $rowId = $this->model->edit($data, $error, $is_sql);
        if ($rowId) {
            return message();
        }
        return message($error, false);
    }

    /**
     * 删除记录
     * @return array
     * @since 2020/11/12
     * @author PENGKING
     */
    public function delete()
    {
        // 参数
        $param = request()->param();
        // 记录ID
        $ids = getter($param, "id");
        if (empty($ids)) {
            return message("记录ID不能为空", false);
        }
        if (is_array($ids)) {
            // 批量删除
            $result = $this->model->deleteDAll($ids);
            if (!$result) {
                return message("删除失败", false);
            }
            return message("删除成功");
        } else {
            // 单个删除
            $info = $this->model->getInfo($ids);
            if ($info) {
                $result = $this->model->drop($ids);
                if ($result !== false) {
                    return message();
                }
            }
            return message($this->model->getError(), false);
        }
    }

    /**
     * 删除guid记录
     * @return array
     * @since 2020/11/12
     * @author PENGKING
     */
    public function delete_guid()
    {
        // 参数
        $param = request()->param();
        // 记录ID
        $guids = getter($param, "guid");
        if (empty($guids)) {
            return message("记录ID不能为空", false);
        }
        if (is_array($guids)) {
            // 批量删除
            $result = $this->model->deleteGuidDAll($guids);
            if (!$result) {
                return message("删除失败", false);
            }
            return message("删除成功");
        } else {
            // 单个删除
            $info = $this->model->getGuidInfo($guids);
            if ($info) {
                $result = $this->model->Guiddrop($guids);
                if ($result !== false) {
                    return message();
                }
            }
            return message($this->model->getError(), false);
        }
    }
    /**
     * 设置状态
     * @return array
     * @since 2020/11/14
     * @author PENGKING
     */
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
        $error = '';
        $item = [
            'id' => $id,
            'status' => $status
        ];
        $rowId = $this->model->edit($item, $error);
        if (!$rowId) {
            return message($error, false);
        }
        return message();
    }
    /**
     * 获取列表数据
     * @return array
     * @since 2020/11/14
     * @author PENGKING
     */
    public function getListSelect()
    {
        $list = $this->model->where("mark", "=", 1)->select()->toArray();
        return message("操作成功", true, $list);
    }
}