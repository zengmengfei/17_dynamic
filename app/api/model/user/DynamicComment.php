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
    public function addDynamicComment($params) {
        $dynamicModel = new Dynamic();
        $dynamic_sn = $params['dynamic_sn'];
        $parent_id = $params['parent_id'] ?? 0;
        if (!empty($parent_id) && empty($this->getCommentById($parent_id))) return true;
        $dynamicInfo = $dynamicModel->getDynamicInfoBySn($dynamic_sn);
        if (empty($dynamicInfo)) return false;
        Db::startTrans();
        try {
            $thumbSave = [
                'guid' => $params['guid'],
                'uu_guid' => $dynamicInfo['guid'],
                'dynamic_sn' => $params['dynamic_sn'],
                'content' => $params['content'],
                'parent_id' => $parent_id,
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
    public function getDynamicComment($params) {
        $dynamic_sn = $params['dynamic_sn'];
        $list = self::with(['user','comments' => function($query) {
            $query->with('user');
        }])->where(['dynamic_sn' => $dynamic_sn, 'mark' => 1, 'parent_id' => 0])->order('create_time', 'desc')->select();
        return $list;
    }

    public function comments()
    {
        return $this->hasMany(DynamicComment::class, 'parent_id', 'id');
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
