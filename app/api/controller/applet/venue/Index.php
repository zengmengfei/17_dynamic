<?php

namespace app\api\controller\applet\venue;

use app\api\model\venue\Venue;
use app\common\controller\ApiBase;
use think\Validate;
use hg\apidoc\annotation as Apidoc;
/**
 * @Apidoc\Title("场馆接口")
 * @Apidoc\Group ("user")
 */
class Index extends ApiBase
{

    public $params;

    public function initialize()
    {
        parent::initialize();
        $params = request()->param();
        $this->params = $params;
    }

    /**
     * @Apidoc\Title("用户场馆列表")
     * @Apidoc\Author("pengking")
     * @Apidoc\Method("GET")
     * @Apidoc\Param("guid", type="string",require=true,desc="用户唯一标识" )
     */
    public  function  get_user_venue(){
        $venueModel = new Venue();
        $list = $venueModel->userVenueList($this->params);
        return ok_msg('请求成功', $list);
    }


    /**
     * @Apidoc\Title("添加场馆")
     * @Apidoc\Author("pengking")
     * @Apidoc\Method("POST")
     * @Apidoc\Param("guid", type="string",require=true,desc="用户唯一标识" )
     * @Apidoc\Param("venue_name", type="string",require=false,desc="场馆名" )
     * @Apidoc\Param("venue_address", type="string",require=false,desc="场馆地址" )
     * @Apidoc\Param("business_hours", type="string",require=true,desc="营业时间" )
     * @Apidoc\Param("principal_telephone", type="string",require=true,desc="联系电话" )
     * @Apidoc\Param("imgs", type="array",require=true,desc="场馆图片" )
     * @Apidoc\Param("longitude", type="string",require=true,desc="场馆定位经度" )
     * @Apidoc\Param("latitude", type="string",require=true,desc="场馆定位纬度" )
     * @Apidoc\Param("province", type="string",require=true,desc="省" )
     * @Apidoc\Param("city", type="string",require=true,desc="市" )
     * @Apidoc\Param("district", type="string",require=true,desc="区" )
     */
    public  function  add_venue(){
        //数据验证
        $validate = new Validate;
        $validate->rule([
            'venue_name' => 'require',
            'venue_address' => 'require',
            'business_hours' => 'require',
            'principal_telephone' => 'require',
            'imgs' => 'require',
            'longitude' => 'require',
            'latitude' => 'require',
        ]);
        $validate->message([
            'venue_name.require' => '场馆名不能为空',
            'venue_address.require' => '场馆地址不能为空',
            'business_hours.require' => '营业时间不能为空',
            'principal_telephone.require' => '联系电话不能为空',
            'imgs.require' => '场馆图片不能为空',
            'longitude.require' => '场馆定位经度不能为空',
            'latitude.require' => '场馆定位纬度不能为空',
        ]);
        if (!$validate->check($this->params)) {
            return $validate->getError();
        }
        $venueModel = new Venue();
        $res = $venueModel->addVenue($this->params, $this->userInfo);
        return $res?ok_msg('添加场馆成功！', $res):err_msg('添加场馆失败');
    }

    /**
     * @Apidoc\Title("删除场馆")
     * @Apidoc\Author("pengking")
     * @Apidoc\Method("POST")
     * @Apidoc\Param("guid", type="string",require=true,desc="用户唯一标识" )
     * @Apidoc\Param("venue_sn", type="string",require=true,desc="场馆唯一标识" )
     */
    public  function  del_venue(){
        //数据验证
        $validate = new Validate;
        $validate->rule([
            'venue_sn' => 'require',
        ]);
        $validate->message([
            'venue_sn.require' => '场馆唯一标识不能为空',
        ]);
        if (!$validate->check($this->params)) {
            return $validate->getError();
        }
        $venueModel = new Venue();
        $res = $venueModel->delVenue($this->params, $this->userInfo);
        return $res?ok_msg('删除场馆成功！', $res):err_msg('删除场馆失败');
    }

}