<?php
declare (strict_types = 1);

namespace app\api\model\user;
use app\api\model\ApiBaseModel;
use think\facade\Db;

/**
 * @mixin \think\Model
 */
class WxUser extends ApiBaseModel
{
     protected $name = "wx_user";

     // 保存用户信息
     public function loginSaveUser($params){
         $openid = $params['openid'];
         $userInfo = $this->getUserInfoByUid($openid);
         if (!empty($userInfo)) {
            return $userInfo;
         }
         Db::startTrans();
         try {
             // 新增用户
             $guid = get_guid_v4();
             $saveData = [
                 'guid' => $guid,
                 'openid' => $openid,
                 'nickname' => '游客'.rand(100000, 999999),
                 'unionid' => $param['unionid'] ?? '',
             ];
             self::save($saveData);
             $userInfoModel = new WxUserinfo();
             $userInfoModel->save(['guid' => $guid]);
             // 提交事务
             Db::commit();
             $userInfo = $this->getUserInfoByUid($openid);
             return $userInfo;
         } catch (\Exception $e) {
             // 回滚事务
             Db::rollback();
             return false;
         }
    }

    // 更新用户信息
    public function updateUser($params) {
        $guid = $params['guid'];
        Db::startTrans();
        try {
            $userData = [
                'nickname' => $params['nickname'] ?? '',
                'avatar' => $params['avatar'] ?? '',
                'gender' => $params['gender'] ?? 0,
                'is_perfect' => 1,
            ];
            if (isset($params['longitude'])) $userData['longitude'] = $params['longitude'];
            if (isset($params['latitude'])) $userData['latitude'] = $params['latitude'];
            if (isset($params['province'])) $userData['province'] = $params['province'];
            if (isset($params['city'])) $userData['city'] = $params['city'];
            if (isset($params['district'])) $userData['district'] = $params['district'];
            // 更新用户
            self::update($userData, ['guid' => $guid]);
            $infoData = [
                'mobile' => $params['mobile'] ?? '',
                'name' => $params['name'] ?? '',
                'birthday' => $params['birthday'] ?? null,
                'location' => $params['location'] ?? '',
                'profession' => $params['profession'] ?? '',
                'constellation' => $params['constellation'] ?? '',
                'tags' => $params['tags'] ?? [],
                'about_me' => $params['about_me'] ?? '',
                'privacy_status' => $params['privacy_status'] ?? 10,
                'imgs' => $params['imgs'] ?? [],
            ];
            if (isset($params['mobile'])) $infoData['mobile'] = $params['mobile'];
            if (isset($params['name'])) $infoData['name'] = $params['name'];
            $userInfoModel = new WxUserinfo();
            // 更新用户详情
            $userInfoModel::update($infoData, ['guid' => $guid]);
            Db::commit();
            return true;
        } catch (\Exception $e) {
            // 回滚事务
            Db::rollback();
            return false;
        }

    }

    // 根据guid|openid查询用户信息
    public function getUserInfoByUid($uid)
    {
        $user = self::where('guid|openid', $uid)->with('info')->find();
        if (empty($user) || empty($user->info)) return [];
        $user = $user->toArray();
        $userInfo = $user['info'];
        unset($user['info']);
        foreach ($userInfo as $field => $v) {
            if (!isset($user[$field])) {
                $user[$field] = $v;
            }
        }
        return $user;
    }


    public function info()
    {
        return $this->hasOne(WxUserinfo::class, 'guid', 'guid');
    }

    // 获取用户头像昵称信息
    public function simpleInfo($guid) {
        $user = self::where('guid', $guid)->field(['guid', 'nickname', 'avatar'])->find();
        return $user?$user->toArray():[];
    }
}
