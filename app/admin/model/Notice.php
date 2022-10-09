<?php


namespace app\admin\model;

/**
 * 通知公告-模型
 * @author PENGKING
 * @since 2020/11/15
 * Class Notice
 * @package app\admin\model
 */
class Notice extends BaseModel
{
    // 设置数据表名
    protected $name = "notice";

    /**
     * 获取通知信息
     * @param int $id 通知ID
     * @return 数据信息|mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @author PENGKING
     * @since 2021/6/5
     */
    public function getInfo($id)
    {
        $info = parent::getInfo($id); // TODO: Change the autogenerated stub
        if ($info) {
            if ($info['content']) {
                while (strstr($info['content'], "[IMG_URL]")) {
                    $info['content'] = str_replace("[IMG_URL]", IMG_URL, $info['content']);
                }
            }
        }
        return $info;
    }

}