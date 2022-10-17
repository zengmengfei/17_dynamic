<?php


namespace app\admin\controller;

use think\Image;

/**
 * 上传文件
 * @author PENGKING
 * @since 2020/11/14
 * Class Upload
 * @package app\admin\controller
 */
class Upload extends Backend
{
    /**
     * 上传图片（支持多图片上传）
     * 备注：1、单文件：file
     *      2、多文件：file[],file[]
     *
     * @author PENGKING
     * @since 2020-04-21
     */
    public function uploadImage()
    {
        // 错误提示语
        $error = "";
        // 上传图片
        $result = upload_image('file', '', $error);
        if (!$result) {
            return message($error, false);
        }
        $data = request()->param();
        $isc = !empty($data['isc']) ? true:false;
        $width = !empty($data['width']) ? $data['width']:0;
        $height = !empty($data['height']) ? $data['height']:0;
        if (empty($width) || empty($height)) {
            $width = 750;
            $height = 350;
        }
        // 结果处理
        $list = [];
        foreach ($result as $key => $value) {
            if (is_array($value)) {
                // 二维数组(多图上传)
                foreach ($result as $key=>$val) {
                    $imgFile = Image::open('./uploads/'.$val['filepath']);
                    if (!$isc) {
                        $imgFile->thumb($width, $height); //制作缩略图(750*350)
                    }
                    $imgFile->save('./uploads/'.$val['filepath'], $val['fileext'], 100);
                    $list[$key]['img_url'] = env('DOMAIN.IMG_URL') . $val['filepath'];
                }
            } else {
                // 一维数组(单图上传)
                $imgFile = Image::open('./uploads/'.$result['filepath']);
                if (!$isc) {
                    $imgFile->thumb($width, $height); //制作缩略图(750*350)
                }
                $imgFile->save('./uploads/' . $result['filepath'], $result['fileext'], 100);
                $list = IMG_URL . $result['filepath'];
            }
        }
        return json(message("上传成功", true, $list));
    }

    /**
     * 上传文件(支持多文件上传)
     * 备注：1、单文件：file
     *      2、多文件：file[],file[]
     *
     * @author PENGKING
     * @since 2020-04-21
     */
    public function uploadFile()
    {
        $error = "";
        // 上传文件(非图片)
        $result = upload_file('file', '', $error);
        if (!$result) {
            return message($error);
        }
        return json(message("上传成功", true, $result));
    }
}