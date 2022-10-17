<?php
declare (strict_types = 1);

namespace app\api\model\user;

use app\api\model\ApiBaseModel;
use think\facade\Db;

/**
 * @mixin \think\Model
 */
class DynamicComment extends ApiBaseModel
{
    protected $name = "user_dynamic_comment";

    // 添加动态评论
    public function addDynamicComment($param) {
        $dynamicModel = new Dynamic();
        $dynamic_sn = $param['dynamic_sn'];
        $parent_id = $param['parent_id'] ?? 0;
        if (!empty($parent_id) && empty($this->getCommentById($parent_id))) return true;
        $dynamicInfo = $dynamicModel->getDynamicInfoBySn($dynamic_sn);
        if (empty($dynamicInfo)) return false;
        Db::startTrans();
        try {
            $thumbSave = [
                'guid' => $param['guid'],
                'uu_guid' => $dynamicInfo['guid'],
                'dynamic_sn' => $param['dynamic_sn'],
                'content' => $param['content'],
                'parent_id' => $parent_id,
                'top_id' => $param['top_id'] ?? 0,
            ];
            self::save($thumbSave);
            if (empty($parent_id)) {
                $dynamicInfo->where('dynamic_sn', $dynamic_sn)->inc('comment_num', 1)->update();
            }
            Db::commit();
            return true;
        } catch (\Exception $e) {
            Db::rollback();
            return false;
        }
    }

    // 获取评论详情
    public function getDynamicComment($param) {
        $dynamic_sn = $param['dynamic_sn'];
        $list = self::with(['user','comments' => function($query) {
            $query->with(['user', 'reply' => function($query) {
                $query->with(['user']);
            }]);
        }])->where(['dynamic_sn' => $dynamic_sn, 'mark' => 1, 'parent_id' => 0, 'top_id' => 0])->order('create_time', 'desc')->select();
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
        return $this->hasOne(DynamicComment::class, 'id', 'parent_id')->field('id,parent_id,guid');
    }

    public function comments()
    {
        return $this->hasMany(DynamicComment::class, 'top_id', 'id');
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
