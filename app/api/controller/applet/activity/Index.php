<?php

namespace app\api\controller\applet\activity;

use app\api\model\activity\Activity;
use app\common\controller\ApiBase;
use think\Validate;
use hg\apidoc\annotation as Apidoc;
/**
 * @Apidoc\Title("活动相关接口")
 * @Apidoc\Group ("user")
 */
class Index extends ApiBase
{
    //不需要登录接口
    protected $noNeedLogin = ['get_activity_list', 'get_activity_detail'];

    public $params;

    public function initialize()
    {
        parent::initialize();
        $params = request()->param();
        $this->params = $params;
    }

    /**
     * @Apidoc\Title("用户发起活动")
     * @Apidoc\Author("pengking")
     * @Apidoc\Method("POST")
     * @Apidoc\Param("guid", type="string",require=true,desc="用户唯一标识" )
     * @Apidoc\Param("contact_name", type="string",require=false,desc="姓名" )
     * @Apidoc\Param("contact_mobile", type="string",require=false,desc="手机号" )
     * @Apidoc\Param("activity_type", type="string",require=true,desc="活动类型" )
     * @Apidoc\Param("venue_sn", type="string",require=true,desc="活动场馆sn" )
     * @Apidoc\Param("activity_date", type="string",require=true,desc="活动日期" )
     * @Apidoc\Param("activity_time", type="array",require=true,desc="活动时间" )
     * @Apidoc\Param("title", type="string",require=true,desc="活动标题" )
     * @Apidoc\Param("cover_imgs", type="array",require=true,desc="活动封面图" )
     * @Apidoc\Param("cancel_apply_deadline_type", type="string",require=true,desc="取消报名截止时间" )
     * @Apidoc\Param("tags", type="string",require=true,desc="标签" )
     * @Apidoc\Param("description", type="string",require=true,desc="活动描述" )
     * @Apidoc\Param("male_level", type="string",require=true,desc="等级男" )
     * @Apidoc\Param("female_level", type="string",require=true,desc="等级女" )
     * @Apidoc\Param("total_num", type="string",require=true,desc="可报名人数" )
     * @Apidoc\Param("team_type", type="string",require=true,desc="队伍类型" )
     * @Apidoc\Param("entry_fee", type="string",require=true,desc="报名费用" )
     */
    public  function  add_activity(){
        //数据验证
        $validate = new Validate;
        $validate->rule([
            'contact_name' => 'require',
            'contact_mobile' => 'require',
            'activity_type' => 'require',
            'venue_sn' => 'require',
            'activity_date' => 'require',
            'activity_time' => 'require',
            'title' => 'require',
            'cover_imgs' => 'require',
            'cancel_apply_deadline_type' => 'require',
            'description' => 'require',
            'tags' => 'require',
            'total_num' => 'require',
            'team_type' => 'require',
            'entry_fee' => 'require',
        ]);
        $validate->message([
            'contact_name.require' => '姓名不能为空',
            'contact_mobile.require' => '手机号不能为空',
            'activity_type.require' => '活动类型不能为空',
            'venue_sn.require' => '场馆sn不能为空',
            'activity_date.require' => '活动日期不能为空',
            'activity_time.require' => '活动时间不能为空',
            'title.require' => '活动标题不能为空',
            'cover_imgs.require' => '活动封面图不能为空',
            'cancel_apply_deadline_type.require' => '取消报名截止时间不能为空',
            'description.require' => '活动描述不能为空',
            'tags.require' => '活动标签不能为空',
            'total_num.require' => '可报名人数不能为空',
            'team_type.require' => '队伍类型不能为空',
            'entry_fee.require' => '报名费不能为空',
        ]);
        if (!$validate->check($this->params)) {
            return $validate->getError();
        }
        $activityModel = new Activity();
        $res = $activityModel->addActivity($this->params, $this->userInfo);
        return $res?ok_msg('添加活动成功！', $res):err_msg('添加活动失败');
    }

    /**
     * @Apidoc\Title("活动列表")
     * @Apidoc\Author("pengking")
     * @Apidoc\Method("GET")
     * @Apidoc\Param("activity_type", type="string",require=false,desc="活动类型" )
     * @Apidoc\Param("activity_date", type="string",require=false,desc="活动日期" )
     * @Apidoc\Param("citys", type="array",require=false,desc="所在城市" )
     * @Apidoc\Param("districts", type="array",require=false,desc="所在地区" )
     * @Apidoc\Param("tags", type="array",require=false,desc="标签" )
     * @Apidoc\Param("is_distance", type="int",require=false,desc="距离离我最近" )
     * @Apidoc\Param("is_last_time", type="int",require=false,desc="时间离我最近" )
     * @Apidoc\Param("longitude", type="string",require=false,desc="当前用户经度" )
     * @Apidoc\Param("latitude", type="string",require=false,desc="当前用户纬度" )
     * @Apidoc\Returned("data", type="json", desc="用户数据")
     */
    public function get_activity_list() {
        $activityModel = new Activity();
        $list = $activityModel->getActivityList($this->params);
        return ok_msg('查询成功', $list);
    }

    /**
     * @Apidoc\Title("活动详情")
     * @Apidoc\Author("pengking")
     * @Apidoc\Param("activity_sn", type="string",require=true,desc="活动唯一标识" )
     * @Apidoc\Method("GET")
     * @Apidoc\Returned("data", type="json", desc="用户数据")
     */
    public function get_activity_detail() {
        if (empty($this->params['activity_sn'])) base_msg('活动唯一标识不能为空');
        $activityModel = new Activity();
        $detail = $activityModel->getActivityDetail($this->params['activity_sn']);
        return ok_msg('查询成功', $detail);
    }

}