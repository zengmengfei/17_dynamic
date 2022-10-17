<?php
declare (strict_types = 1);

namespace app\api\model\user;

use app\api\model\ApiBaseModel;

/**
 * @mixin \think\Model
 */
class WxUserinfo extends ApiBaseModel
{
    protected $name = "wx_userinfo";

    protected $append = ['certification_str', 'member_level_str', 'player_level_str', 'org_level_str'];

    // 是否实名认证
    const certificationArr = [
        0 => '未实名认证', 1 => '已实名认证'
    ];

    // 会员等级
    const memberLevelArr = [
        10 => 'vip 1', 20 => 'vip 2', 30 => 'vip 3', 40 => 'vip 4', 50 => 'vip 5',
    ];

    // 玩家等级
    const playerLevelArr = [
        10 => '萌新', 20 => '熟练', 30 => '专业', 40 => '大神'
    ];

    // 组织者等级
    const orgLevelArr = [
        10 => 'lv1', 20 => 'lv2', 30 => 'lv3', 40 => 'lv4', 50 => 'lv5'
    ];

    public function getTagsAttr($value)
    {
        return $value?explode(',', $value):'';
    }

    public function setTagsAttr($value)
    {
        return ($value && is_array($value))?implode(',',$value):$value;
    }

    public function getImgsAttr($value)
    {
        return $value?explode(',', $value):'';
    }

    public function setImgsAttr($value)
    {
        if (!$value) return $value;
        $value = explode(',', $value);
        $data = [];
        foreach ($value as $item) {
            $data[] = get_image_url($item);
        }
        return $data;
    }


    // 获取平台优质用户列表
    public function getHighQualityUsers($params) {
        $query = self::with(['user' => function($query){
            $query->where(['is_perfect' => 1, 'mark' => 1])->field(['guid', 'nickname', 'avatar', 'gender']);
        }])->where(['privacy_status' => 10]);
        if (!empty($params['limit'])) {
            $query->limit($params['limit']);
        }
        $list = $query->order(['member_level' => 'desc', 'org_level' => 'desc', 'player_level' => 'desc'])->select();
        if (empty($list)) return $list;
        $newList = [];
        foreach ($list as $v) {
            $newList[] = [
                'guid' => $v['guid'],
                'nickname' => $v['user']['nickname'] ?? '',
                'avatar' => $v['user']['avatar'] ?? '',
                'gender' => $v['user']['gender'] ?? 0,
                'is_certification' => $v['is_certification'],
                'player_level' => $v['player_level'],
                'org_level' => $v['org_level'],
                'member_level' => $v['member_level'],
                'certification_str' => $v['certification_str'],
                'member_level_str' => $v['member_level_str'],
                'player_level_str' => $v['player_level_str'],
                'org_level_str' => $v['org_level_str'],
            ];
        }
        return $newList;
    }

    public function user()
    {
        return $this->hasOne(WxUser::class, 'guid', 'guid');
    }


    // 是否实名认证
    public function getCertificationStrAttr($value, $data)
    {
        return self::certificationArr[$data['is_certification']] ?? '';
    }

    // 会员等级
    public function getMemberLevelStrAttr($value, $data)
    {
        return self::memberLevelArr[$data['member_level']] ?? '';
    }

    // 玩家等级
    public function getPlayerLevelStrAttr($value, $data)
    {
        return self::playerLevelArr[$data['player_level']] ?? '';
    }

    // 组织者等级
    public function getOrgLevelStrAttr($value, $data)
    {
        return self::orgLevelArr[$data['org_level']] ?? '';
    }
}
