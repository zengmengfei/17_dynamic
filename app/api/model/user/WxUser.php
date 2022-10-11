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
                 'unionid' => $param['unionid'] ?? '',
             ];
             self::save($saveData);
             $infoData = ['guid' => $guid];
             if (!empty($params['mobile'])) $infoData['mobile'] = $params['mobile'];
             $userInfoModel = new WxUserinfo();
             $userInfoModel::save($infoData);
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
        $userInfoModel = new WxUserinfo();
        Db::startTrans();
        try {
            $userData = [
                'nickname' => $params['nickname'] ?? '',
                'avatar' => $params['avatar'] ?? '',
                'gender' => $params['gender'] ?? 0,
                'is_perfect' => 1,
            ];
            // 更新用户
            self::where('guid', $guid)->update($userData);
            $infoData = [
                'mobile' => $params['mobile'] ?? '',
                'name' => $params['name'] ?? '',
                'birthday' => $params['birthday'] ?? null,
                'location' => $params['location'] ?? '',
                'profession' => $params['profession'] ?? '',
                'constellation' => $params['constellation'] ?? '',
                'tags' => $params['tags'] ?? '',
                'sign' => $params['sign'] ?? '',
                'privacy_status' => $params['privacy_status'] ?? 10,
                'imgs' => $params['imgs'] ?? [],
            ];
            // 更新用户详情
            $userInfoModel::where('guid', $guid)->update($infoData);
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
        $user = self::where('guid|openid', $uid)->with('info')->find()->toArray();
        if (empty($user) || empty($user['info'])) return [];
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
}
