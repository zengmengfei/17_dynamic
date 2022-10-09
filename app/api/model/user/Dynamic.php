<?php
declare (strict_types = 1);

namespace app\api\model\user;

use app\api\model\ApiBaseModel;

/**
 * @mixin \think\Model
 */
class Dynamic extends ApiBaseModel
{
    protected $name = "user_dynamic";

    // 动态列表
    public function dynamicList($params) {
        $map = [];
        // 部门名称
        if (!empty($params['type']) && $params['type'] == 20) {
            $attentionModel = new Attention();
            $guids = $attentionModel->getAttentionGuids($params['guid']);
            $map[] = ['guid', 'in', $guids];
        }
        $page = !empty($params['page'])?$params['page']:1;
        $count = !empty($params['count'])?$params['count']:20;
        $list = self::with(['user'])->where($map)->order(['create_time' => 'desc'])->paginate(['page' => $page,'list_rows'=> $count])->toArray();
        if (!empty($list['data'])) {
            foreach ($list['data'] as $key => $value) {
                $list['data'][$key]['time_txt'] = get_format_time(strtotime($value['create_time']));
            }
        }
        return message("操作成功", true, $list);
    }

    // 我的动态列表
    public function myDynamicList($params) {
        $map = ['guid' => $params['guid']];
        $page = !empty($params['page'])?$params['page']:1;
        $count = !empty($params['count'])?$params['count']:20;
        $list = self::with(['user'])->where($map)->order(['create_time' => 'desc'])->paginate(['page' => $page,'list_rows'=> $count])->toArray();
        $reData = $list;
        if (!empty($list['data'])) {
            $reData['data'] = [];
            foreach ($list['data'] as $value) {
                $date = date('Y-m-d', strtotime($value['create_time']));
                if (isset($reData['data'][$date]['list'])) {
                    $reData['data'][$date]['list'][] = $value;
                } else {
                    list($y, $m, $d) = explode('-', $date);
                    $reData['data'][$date] = ['m' => $m, 'd' => $d, 'list' => [$value]];
                }
            }
        }
        return message("操作成功", true, $reData);
    }

    //动态详情
    public function dynamicDetail($dynamic_sn) {
        $detail = self::with(['user'])->where(['dynamic_sn' => $dynamic_sn])->find()->toArray();
        if (!empty($detail)) {
            $detail['time_txt'] = get_format_time(strtotime($detail['create_time']));
        }
        return $detail;
    }

    // 通过Sn获取动态详情
    public function getDynamicInfoBySn($dynamic_sn) {
        $map = ['dynamic_sn' => $dynamic_sn, 'mark' => 1];
        return self::where($map)->find();
    }

    // 添加动态
    public function addDynamic($params) {
        $saveData = [
            'dynamic_sn' => get_guid_v4(),
            'guid' => $params['guid'],
            'title' => $params['title'],
            'status' => $params['status'],
            'imgs' => $params['imgs'] ?? '',
            'video_url' => $params['video_url'] ?? '',
        ];
        return self::save($saveData);
    }

    // 动态分享接口
    public function dynamicShare($params) {
        $dynamicInfo = $this->getDynamicInfoBySn($params['dynamic_sn']);
        if (empty($dynamicInfo)) return false;
        return self::where('dynamic_sn', $params['dynamic_sn'])->inc('share_num', 1)->update();
    }

    public function getImgsAttr($value)
    {
        return $value?explode(',', $value):'';
    }

    public function setImgsAttr($value)
    {
        return ($value && is_array($value))?implode(',',$value):$value;
    }

    public function user()
    {
        return $this->hasOne(WxUser::class, 'guid', 'guid')->field(['guid', 'nickname', 'avatar']);
    }
}
