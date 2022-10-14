<?php
declare (strict_types = 1);

namespace app\api\model\activity;

use app\api\model\ApiBaseModel;
use app\api\model\user\WxUser;
use think\facade\Db;

/**
 * @mixin \think\Model
 */
class ActivityComment extends ApiBaseModel
{
    protected $name = "activity_comment";

    // 添加动态评论
    public function addActivityComment($param) {
        $activityModel = new Activity();
        $activity_sn = $param['activity_sn'];
        $activityInfo = $activityModel->getActivityInfo($activity_sn);
        if (empty($activityInfo)) base_msg('活动不存在，评论失败');
        Db::startTrans();
        try {
            $saveData = [
                'guid' => $param['guid'],
                'activity_sn' => $activity_sn,
                'content' => $param['content'],
                'parent_id' => $param['parent_id'] ?? 0,
                'top_id' => $param['top_id'] ?? 0,
            ];
            self::save($saveData);
            Db::commit();
            return true;
        } catch (\Exception $e) {
            Db::rollback();
            return false;
        }
    }

    // 获取评论详情
    public function activityCommentList($param) {
        $activity_sn= $param['activity_sn'];
        $list = self::with(['user','comments' => function($query) {
            $query->with(['user', 'reply' => function($query) {
                $query->with(['user']);
            }]);
        }])->where(['activity_sn' => $activity_sn, 'mark' => 1, 'parent_id' => 0, 'top_id' => 0])->order('create_time', 'desc')->select();
        if (empty($list)) return $list;
        $list = $list->toArray();
        foreach ($list as &$v) {
            $v['nickname'] = $v['user']['nickname'] ?? '';
            $v['avatar'] = $v['user']['avatar'] ?? '';
            $cts = [];
            if (!empty($v['comments'])) {
                foreach ($v['comments'] as &$c) {
                    $c['nickname'] = $c['user']['nickname'] ?? '';
                    $c['avatar'] = $c['user']['avatar'] ?? '';
                    $c['reply_guid'] = $c['reply']['guid'] ?? '' ;
                    $c['reply_nickname'] = $c['reply']['user']['nickname'] ?? '' ;
                    unset($c['user']);
                    unset($c['reply']);
                    $cts[] = $c;
                }
            }
            unset($v['user']);
            unset($v['comments']);
            $v['childs'] = $cts;
        }
        return $list;
    }

    public function reply() {
        return $this->hasOne(activityComment::class, 'id', 'parent_id')->field('id,parent_id,guid');
    }

    public function comments()
    {
        return $this->hasMany(activityComment::class, 'top_id', 'id');
    }

    public function user()
    {
        return $this->hasOne(WxUser::class, 'guid', 'guid')->field('guid,nickname,avatar');
    }

    // 获取评论详情
    public function getCommentById($id) {
        return self::find($id);
    }
}
