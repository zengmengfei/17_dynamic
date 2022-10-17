<?php

namespace app\api\controller\applet\index;

use app\api\model\Advert;
use app\api\model\user\WxUserinfo;
use app\api\model\venue\Venue;
use app\common\controller\ApiBase;
use think\Validate;
use hg\apidoc\annotation as Apidoc;
/**
 * @Apidoc\Title("首页相关接口")
 * @Apidoc\Group ("index")
 */
class Index extends ApiBase
{
    //不需要登录接口
    protected $noNeedLogin = ['*'];

    public $params;

    public function initialize()
    {
        parent::initialize();
        $params = request()->param();
        $this->params = $params;
    }

    /**
     * @Apidoc\Title("活动海报")
     * @Apidoc\Author("pengking")
     * @Apidoc\Method("GET")
     * @Apidoc\Returned("data", type="json", desc="用户数据")
     */
   public function get_posters() {
       $index_key = 'activity_poster_index';
       $advertModel = new Advert();
       $list =  $advertModel->getListByIndex($index_key);
       return ok_msg('查询成功', $list);
   }

    /**
     * @Apidoc\Title("推荐场馆|换一换")
     * @Apidoc\Author("pengking")
     * @Apidoc\Method("GET")
     * @Apidoc\Returned("data", type="json", desc="用户数据")
     */
    public function get_venues() {
        $venueModel = new Venue();
        $list =  $venueModel->getRandomList();
        return ok_msg('查询成功', $list);
    }

    /**
     * @Apidoc\Title("平台优质用户列表")
     * @Apidoc\Author("pengking")
     * @Apidoc\Method("GET")
     * @Apidoc\Returned("data", type="json", desc="用户数据")
     */
    public function get_high_quality_users() {
        $wxUserinfoModel = new WxUserinfo();
        $list =  $wxUserinfoModel->getHighQualityUsers($this->params);
        return ok_msg('查询成功', $list);
    }

}