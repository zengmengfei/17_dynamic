<?php
declare (strict_types=1);
namespace app\open\middleware;
use http\Env;
use think\facade\Config;
use think\Response;

/**
 * 登录校验中间件
 * @author PENGKING
 * @since 2021/1/8
 * Class CheckLogin
 * @package app\open\middleware
 */
class CheckOpenLogin
{

    /**
     * 处理请求
     * @param \think\Request $request
     * @param \Closure $next
     * @return Response
     */
    public function handle($request, \Closure $next)
    {
        $this->initSystemConstant();
        // 登录校验
        if (!in_array(request()->controller(), ['Login'])) {
            $openauthorization = request()->header("OpenAuthorization",'');
            $appid = request()->header("AppId",'');
            if(empty($appid)){
                    base_msg('缺少参数Appid',403);
            }
            if ($openauthorization && strpos($openauthorization, 'BearerOpen') !== false) {
                $openauthorization = str_replace("BearerOpen ", '', $openauthorization);
                $jwt = new \Jwt();
                $token = $jwt->verifyToken($openauthorization);
                if(empty($token)){
                    base_msg('登录超时',405);
                }
                if($appid !==$jwt->verifyToken($openauthorization)){
                    base_msg('登录超时或鉴权失败',402);
                }
            }else{
                    base_msg('请登录',401);
            }
        }


        return $next($request);
    }

    /**
     * 初始化系统常量
     *
     * @author PENGKING
     * @since 2020-04-21
     */
    public function initSystemConstant()
    {
        // 基础常量
        define('ROOT_PATH', app()->getRootPath());
        define('APP_PATH', ROOT_PATH . "app");
        define('ROUTE_PATH', ROOT_PATH . "route");
        define('RUNTIME_PATH', ROOT_PATH . "runtime");
        define('EXTEND_PATH', ROOT_PATH . "extend");
        define('VENDOR_PATH', ROOT_PATH . "vendor");
        define('PUBLIC_PATH', ROOT_PATH . 'public');

        // 附件常量
        // 文件上传路径
        $upload_parh = \think\facade\Filesystem::getDiskConfig(config('filesystem.default'), 'root');
        define('ATTACHMENT_PATH', $upload_parh);
        define('IMG_PATH', ATTACHMENT_PATH . "/images");
        define('UPLOAD_TEMP_PATH', ATTACHMENT_PATH . '/temp');


        // 系统域名
        define('SITE_URL', env('domain.site_url'));
        define('IMG_URL', env('domain.img_url'));
    }

}
