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
         $jwt = new \Jwt();
         $openid = $params['openid'];
         $userinfo = $this->getUserInfoByUid($openid);
         $currentTime = date('Y-m-d H:i:s');
         $saveData = ['last_auth_time' => $currentTime];
         $userInfoModel = new WxUserinfo();
         Db::startTrans();
         try {
             if (empty($userinfo)) {
                 if (!empty($params['avatarUrl'])) $saveData['avatar'] = $params['avatarUrl'];
                 if (!empty($params['nickName'])) $saveData['nickname'] = $params['nickName'];
                 if (!empty($params['gender'])) $saveData['gender'] = $params['gender'];
                 if (!empty($params['city'])) $saveData['city'] = $params['city'];
                 if (!empty($params['province'])) $saveData['province'] = $params['province'];
                 if (!empty($params['country'])) $saveData['country'] = $params['country'];
                 if (!empty($params['session_key'])) $saveData['session_key'] = $params['session_key'];
                 // 新增用户
                 $user_guid = get_guid_v4();
                 $saveData['user_guid'] = $user_guid;
                 $saveData['token'] = $jwt->getToken($user_guid);
                 $saveData['openid'] = $openid;
                 $saveData['unionid'] = $param['unionid'] ?? null;
                 self::save($saveData);
                 $infoData = ['user_guid' => $user_guid];
                 if (!empty($params['mobile'])) $infoData['mobile'] = $params['mobile'];
                 $userInfoModel::save($infoData);
             } else {
                 if (!is_array($userinfo)) $userinfo = $userinfo->toArray();
                 $saveData['token'] = $jwt->getToken($userinfo['user_guid']);
                 // 更新用户
                 self::where('openid', $openid)->update($saveData);
                 if (!empty($params['mobile']) && (empty($userinfo['info']['mobile']) || $userinfo['info']['mobile'] != $params['mobile'])) {
                     $userInfoModel::where('user_guid', $userinfo['user_guid'])->update(['mobile' => $params['mobile']]);
                 }
             }
             // 提交事务
             Db::commit();
             return true;
         } catch (\Exception $e) {
             // 回滚事务
             Db::rollback();
             return false;
         }
    }

    // 更新用户信息
    public function updateUser($params) {
        $user_guid = $params['user_guid'];
        $userInfoModel = new WxUserinfo();
        Db::startTrans();
        try {
            $userData = [
                'nickname' => $params['nickname'] ?? '',
                'avatar' => $params['avatar'] ?? '',
                'gender' => $params['gender'] ?? 0,
            ];
            // 更新用户
            self::where('user_guid', $user_guid)->update($userData);
            $infoData = [
                'mobile' => $params['mobile'] ?? '',
                'name' => $params['name'] ?? '',
                'age' => $params['age'] ?? '',
                'profession' => $params['profession'] ?? '',
                'height' => $params['height'] ?? '',
                'weight' => $params['weight'] ?? '',
                'income' => $params['income'] ?? '',
                'marital_status' => $params['marital_status'] ?? 0,
                'state_love' => $params['state_love'] ?? 0,
                'hobby' => $params['hobby'] ?? '',
                'tags' => $params['tags'] ?? '',
                'user_sign' => $params['user_sign'] ?? '',
                'ideal_partner' => $params['ideal_partner'] ?? '',
                'privacy_status' => $params['privacy_status'] ?? 10,
            ];
            // 更新用户详情
            $userInfoModel::where('user_guid', $user_guid)->update($infoData);
            Db::commit();
            return true;
        } catch (\Exception $e) {
            // 回滚事务
            Db::rollback();
            return false;
        }

    }

    // 根据user_guid|openid|token查询用户信息
    public function getUserInfoByUid($uid)
    {
        return self::where('user_guid|openid|token', $uid)->with('info')->find();
    }


    public function info()
    {
        return $this->hasOne(WxUserinfo::class, 'user_guid', 'user_guid');
    }
}
