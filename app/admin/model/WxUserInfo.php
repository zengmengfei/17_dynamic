<?php namespace app\admin\model;

use think\facade\Db;

/**
 * 小程序用户-模型
 * @author PENGKING
 * @since: 2022/10/09
 * Class WxUser
 * @package app\admin\model
 */
class WxUserInfo extends BaseModel
{
    // 设置数据表名
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