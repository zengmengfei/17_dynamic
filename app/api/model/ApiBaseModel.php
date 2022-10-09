<?php
declare (strict_types = 1);

namespace app\api\model;
use think\Model;
use hg\apidoc\annotation\WithoutField;


/**
 * @mixin \think\Model
 */
class ApiBaseModel extends Model
{
    // 自动写入时间戳字段,true开启false关闭

    protected $autoWriteTimestamp = 'int';
    // 创建时间字段自定义,默认create_time
    protected $createTime = 'create_time';
    // 更新时间字段自定义,默认update_time
    protected $updateTime = 'update_time';


    /**
     * 根据查询条件获取当前模型的 分页列表
     */
    public function getList($where=[],$page=0,$limit=20,$field=[],$order=["id" => "desc"]) {
        $list = $this->where($where)
            ->where('mark',1)
            ->order($order)
            ->field($field)
            ->paginate(['page' => $page,'list_rows'=> $limit])->toArray();

        if(empty($list->items())){
            return base_msg("暂无数据");
        }
        return $list;
    }

    /*
     *  查询分页列表
     */
    public function getPaginateList($map = [],$page = 0, $limit = 20, $field = '*', $order = ["id" => "desc"]) {
        $list = $this->where($map)
            ->order($order)
            ->field($field)
            ->paginate(['page' => $page,'list_rows'=> $limit]);
        return $list;
    }

    /**
     * @withoutField("delete_time")
     */
    public function getInfoById($id){
        $info = $this->where('id|guid',$id)->where('mark',1)->find();
        return $info;
    }





}
