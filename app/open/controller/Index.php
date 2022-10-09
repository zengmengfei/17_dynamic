<?php
declare (strict_types = 1);

namespace app\open\controller;
use app\common\controller\OpenBase;
use think\facade\Db;
use think\Validate;
use hg\apidoc\annotation as Apidoc;


/**
 * @Apidoc\Title("例子")
 */
class Index extends OpenBase
{
    /**
     * @Apidoc\Title("获取列表")
     * @Apidoc\Author("pengking")
     * @Apidoc\Header (ref="open_auth")
     * @Apidoc\Tag("测试")
     * @Apidoc\Param( ref="pagingParam")
     * @Apidoc\Returned("list", type="array", desc="数据")
     */
    public function index()
    {

        $client_id = request()->header('AppId','');
        $table = 'log_open_' . date('Y') . '_' . date('m');
        if(empty($params['size'])){
            $params['size'] = 10;
        }
        $list = Db::name($table)
            ->where('client_id', $client_id)
            ->paginate($params['size']);
        if(empty($list->items())){
            return  err_msg('暂无数据');
            }
        return  ok_msg('ok',$list);
    }

    /**
     * @Apidoc\Title("获取详情")
     * @Apidoc\Header (ref="open_auth")
     * @Apidoc\Author("pengking")
     * @Apidoc\Method("GET")
     * @Apidoc\Tag("测试")
     * @Apidoc\Param("info_id", type="int",default=1,require=true,desc="数据id" )
     * @Apidoc\Returned("info", type="array", desc="数据")
     */
    public function get_one()
    {

        //数据验证
        $validate = new Validate;
        $validate->rule([
            'info_id' => 'require',
        ]);
        $validate->message([
            'info_id.require' => '数据id不能为空',
        ]);
        $params = request()->param();
        //halt($params);
        if (!$validate->check($params)) {
            return err_msg($validate->getError());
        }
        $table = 'log_open_' . date('Y') . '_' . date('m');
        $info = Db::name($table)
            ->where('id', $params['info_id'])
            ->where('client_id', $this->client_id)
            ->find();
        if(empty($info)){
            return  err_msg('暂无数据');
        }
        return  ok_msg('ok',$info);

    }

    /**
     * @Apidoc\Title("获取用户详情")
     * @Apidoc\Header (ref="open_auth")
     * @Apidoc\Author("pengking")
     * @Apidoc\Method("post")
     * @Apidoc\Tag("测试")
     * @Apidoc\Param("user_token", type="int",default=1,require=true,desc="用户id" )
     * @Apidoc\Returned("info", type="array", desc="数据")
     */
    public function get_open_userinfo(){
        $params = request()->param();
        //数据验证
        $rule=([
            'user_token' => 'require',
        ]);
        $message=([
            'user_token.require' => 'user_token不能为空',
        ]);
        $this->api_validate($params,$rule,$message);

        $table = "tq_user";
        $
        $info = Db::name($table)
            ->where('id', $params['info_id'])
            ->where('client_id', $this->client_id)
            ->find();
        if(empty($info)){
            return  err_msg('暂无数据');
        }
        return  ok_msg('ok',$info);

    }
}
