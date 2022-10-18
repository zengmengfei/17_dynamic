<?php

namespace app\api\controller\applet\venue;

use app\api\model\venue\Venue;
use app\api\model\venue\VenueReserve;
use app\common\controller\ApiBase;
use think\Validate;
use hg\apidoc\annotation as Apidoc;
/**
 * @Apidoc\Title("场馆接口")
 * @Apidoc\Group ("user")
 */
class Index extends ApiBase
{
    protected $noNeedLogin = ['venue_period_detail', 'get_venue_list'];

    public $params;

    public function initialize()
    {
        parent::initialize();
        $params = request()->param();
        $this->params = $params;
    }

    /**
     * @Apidoc\Title("场馆列表")
     * @Apidoc\Author("pengking")
     * @Apidoc\Method("GET")
     * @Apidoc\Param("title", type="string",require=false,desc="场馆名称" )
     * @Apidoc\Param("citys", type="array",require=false,desc="所在成功" )
     * @Apidoc\Param("districts", type="array",require=false,desc="所在区" )
     * @Apidoc\Param("is_distance", type="int",require=false,desc="是否距离优先" )
     * @Apidoc\Param("is_price", type="int",require=false,desc="是否价格优先" )
     */
    public  function  get_venue_list(){
        $venueModel = new Venue();
        $list = $venueModel->getVenueList($this->params);
        return ok_msg('请求成功', $list);
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
     * @Apidoc\Title("添加更新场馆")
     * @Apidoc\Author("pengking")
     * @Apidoc\Method("POST")
     * @Apidoc\Param("guid", type="string",require=true,desc="用户唯一标识" )
     * @Apidoc\Param("venue_name", type="string",require=true,desc="场馆名" )
     * @Apidoc\Param("venue_address", type="string",require=true,desc="场馆地址" )
     * @Apidoc\Param("business_hours", type="string",require=true,desc="营业时间" )
     * @Apidoc\Param("principal_telephone", type="string",require=true,desc="联系电话" )
     * @Apidoc\Param("imgs", type="array",require=true,desc="场馆图片" )
     * @Apidoc\Param("longitude", type="string",require=true,desc="场馆定位经度" )
     * @Apidoc\Param("latitude", type="string",require=true,desc="场馆定位纬度" )
     * @Apidoc\Param("province", type="string",require=true,desc="省" )
     * @Apidoc\Param("city", type="string",require=true,desc="市" )
     * @Apidoc\Param("district", type="string",require=true,desc="区" )
     * @Apidoc\Param("details", type="array",require=false,desc="场次信息" )
     */
    public  function  save_venue(){
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
           base_msg($validate->getError());
        }
        $venueModel = new Venue();
        $res = $venueModel->saveVenue($this->params, $this->userInfo);
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
           base_msg($validate->getError());
        }
        $venueModel = new Venue();
        $res = $venueModel->delVenue($this->params, $this->userInfo);
        return $res?ok_msg('删除场馆成功！', $res):err_msg('删除场馆失败');
    }

    /**
     * @Apidoc\Title("获取场馆详情")
     * @Apidoc\Author("pengking")
     * @Apidoc\Method("GET")
     * @Apidoc\Param("venue_sn", type="string",require=true,desc="场馆唯一标识" )
     */
    public  function  venue_period_detail(){
        //数据验证
        $validate = new Validate;
        $validate->rule([
            'venue_sn' => 'require',
        ]);
        $validate->message([
            'venue_sn.require' => '场馆唯一标识不能为空',
        ]);
        if (!$validate->check($this->params)) {
             base_msg($validate->getError());
        }
        $venueModel = new Venue();
        $data = $venueModel->venuePeriodDetail($this->params);
        return $data?ok_msg('查询成功！', $data):err_msg('场次信息不存在');
    }

    /**
     * @Apidoc\Title("场馆预定")
     * @Apidoc\Author("pengking")
     * @Apidoc\Method("POST")
     * @Apidoc\Param("guid", type="string",require=true,desc="用户唯一标识" )
     * @Apidoc\Param("venue_sn", type="string",require=true,desc="场馆唯一标识" )
     * @Apidoc\Param("re_date", type="string",require=true,desc="预定日期" )
     * @Apidoc\Param("re_time", type="array",require=true,desc="预定开始结束时间" )
     */
    public  function  venue_reserve(){
        //数据验证
        $validate = new Validate;
        $validate->rule([
            'venue_sn' => 'require',
            're_date' => 'require',
            're_time' => 'require',
        ]);
        $validate->message([
            'venue_sn.require' => '场馆唯一标识不能为空',
            're_date.require' => '预定日期不能为空',
            're_time.require' => '预定时间不能为空',
        ]);
        if (!$validate->check($this->params)) {
            base_msg($validate->getError());
        }
        $venueModel = new VenueReserve();
        $res = $venueModel->addVenueReserve($this->params);
        return $res?ok_msg('预定成功！'):err_msg('预定失败');
    }
}