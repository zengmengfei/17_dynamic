<?php
namespace app\api\validate;
use think\Validate;
use think\facade\Request;

class BaseValidate extends  Validate
{
    public function goCheck($scene = "")
    {
        //必须设置contetn-type:application/json
        $request = Request::instance();
        $params = $request->param();
        try {
            $result = $this->scene($scene)
                ->check($params);
            if (!$result) {
                $msg = is_array($this->error) ? implode(
                    ';', $this->error) : $this->error;
                return base_msg('缺少参数',$this->error);
            }
            return $params;
        } catch (ValidateException $e) {
            // 验证失败 输出错误信息
            return base_msg('缺少参数',$e->getError());

        }


    }

    /**
     * 正整数验证
     * @param $value
     * @param string $rule
     * @param string $data
     * @param string $field
     * @return bool|string
     */
    protected function isInteger($value, $rule='', $data='', $field='')
    {
        if (is_numeric($value) && is_int($value + 0) && ($value + 0) > 0) {
            return true;
        }
        return $field . '必须是正整数';
    }
}