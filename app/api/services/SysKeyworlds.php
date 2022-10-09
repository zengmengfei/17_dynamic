<?php
namespace app\api\services;
use app\api\model\SysKeyworlds as SysKeyworldsModel;
class SysKeyworlds
{
    protected $model;
    public function __construct()
    {
        $this->model = new SysKeyworldsModel();
    }
    /**
     * 查询分页数据
     * @param $page
     * @param $limit
     * @return array
     * @throws \think\db\exception\DbException
     */
    public function getPageList($page,$limit,$where=[]){
        $res = $this->model->where($where)
        ->where('mark',1)
        ->order("id desc")
        ->paginate(['page' => $page,'list_rows'=> $limit])
        ->toArray();
        return $res;
    }
    /**
    * 根据id查询明细
    * @param $id
    * @return array|\think\Model|null
    * @throws \think\db\exception\DataNotFoundException
    * @throws \think\db\exception\DbException
    * @throws \think\db\exception\ModelNotFoundException
    */
    public function getInfoById($id){
        $res = $this->model->where('id',$id)->where('mark',1)->find();
        return $res;
    }
    /**
    * 根据guid查询明细
    * @param $guid
    * @return array|\think\Model|null
    * @throws \think\db\exception\DataNotFoundException
    * @throws \think\db\exception\DbException
    * @throws \think\db\exception\ModelNotFoundException
    */
    public function getInfoByGuid($guid){
        $res = $this->model->where('guid',$guid)->where('mark',1)->find();
        return $res;
    }
    /**
    * 新增
    */
    public function add($params){
        $res = $this->model->createInfo($params);
        return $res;
    }
    /**
    * 编辑
    * @param $params
    * @return bool
    */
    public function update($params){
        $res = $this->model->updateInfo($params['id'],$params);
        return $res;
    }
    /**
    * 删除
    * @param $params
    * @return bool
    */
    public function delete($id){
    $info = $this->model->find($id);
        if(empty($info)){
             return false;
        }else{
            $res = $info->delete();
            if ($res){
                return true;
            }
                return false;
            }
    }
}