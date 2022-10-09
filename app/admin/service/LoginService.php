<?php


namespace app\admin\service;

use app\admin\model\ActionLog;
use app\admin\model\User;
use Carbon\Carbon;
use Ramsey\Uuid\Uuid;

/**
 * 登录-服务类
 * @author PENGKING
 * @since 2020/11/14
 * Class LoginService
 * @package app\admin\service
 */
class LoginService extends BaseService
{
    /**
     * 构造函数
     * @author PENGKING
     * @since 2020/11/14
     * LoginService constructor.
     */
    public function __construct()
    {
        $this->model = new User();
    }

    /**
     * 获取验证码
     * @return array
     * @since 2020/11/14
     * @author PENGKING
     */
    public function captcha()
    {
        //生成随机UID
        $uuid = get_guid_v4();

        //生成图片验证码
        $verify = new \Verify(['length' => 4, 'useCurve' => true]);
        // 验证码图片
        $img = $verify->entry($uuid);
        // 验证码值
        $code = $verify->getCode();

        // 把内容存入 cache，10分钟后过期
        $key = get_guid_v4();
        cache($key, $code, 10 * 60);

        // 返回结果
        $result = [
            'key' => $key,
            'captcha' => "data:image/png;base64," . base64_encode($img)
        ];
        return message("操作成功", true, $result);
    }

    /**
     * 登录系统
     * @return array
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @since 2020/11/15
     * @author PENGKING
     */
    public function login()
    {
        // 请求参数
        $param = request()->param();
        // 登录账号
        $username = trim($param['username']);
        if (!$username) {
            return message('登录账号不能为空', false);
        }
        // 登录密码
        $password = trim($param['password']);
        if (!$password) {
            return message('登录密码不能为空', false);
        }
        // 验证码校验
        $key = trim($param['key']);
        // 验证码
        $captcha = trim($param['captcha']);
        if (strtolower($captcha) != strtolower(cache($key))) {
            return message("请输入正确的验证码", false);
        }

        // 用户验证
        $info = $this->model->getOne([
            ['username', '=', $username],
        ]);

        if (!$info) {
            return message('用户名或密码错误', false);
        }
        // 密码校验

        $password = get_password_salt($password,$info['salt']);
        //halt($password);
        if ($password != $info['password']) {
            return message("用户名或密码错误", false);
        }
        // 使用状态校验
        if ($info['status'] != 1) {
            return message("帐号已被禁用", false);
        }

        // 设置日志标题
        ActionLog::setTitle("登录系统");

        // JWT生成token
        $jwt = new \Jwt();
        $token = $jwt->getToken($info['id']);
        // 结果返回
        $result = [
            'access_token' => $token,
        ];
        cache($key,null);
        return message('登录成功', true, $result);
    }

    /**
     * 注销系统
     * @return array
     * @since 2020/11/12
     * @author PENGKING
     */
    public function logout()
    {
//        // 清空SESSION值
//        session()->put("userId", null);
        // 记录退出日志
        ActionLog::setTitle("注销系统");
        // 创建退出日志
        ActionLog::record();
        return message();
    }

}