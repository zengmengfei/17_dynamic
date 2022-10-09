<?php

namespace app\api\controller\sys\file;
use app\common\controller\ApiBase;
use hg\apidoc\annotation as Apidoc;
use think\Image;

/**
 * @Apidoc\Title("文件上传")
 * @Apidoc\Group("sys")
 */
class Upload extends ApiBase
{
    protected $noNeedLogin = ['*'];

    /**
     * @Apidoc\Title("图片上传")
     * @Apidoc\Author("pengking")
     * @Apidoc\Param("form_name", type="file", require=true, desc="单图form_name 多图form_name[]")
     * @Apidoc\Param("save_dir", type="string", require=false,default="api", desc="保存路径")
     * @Apidoc\Param("compress", type="int", require=false,default="1", desc="是否压缩 1是 2否")
     * @Apidoc\Param("watermark", type="int", require=false,default="1", desc="是否开启水印 1是 2否")
     * @Apidoc\Returned("data", type="string", desc="图片地址")
     */
    public  function  uploadImage(){

        $save_dir= request()->param('save_dir','api');
        $compress= request()->param('compress','1');
        $watermark= request()->param('watermark','1');
        $result = upload_image("form_name",$save_dir);

        if($result){
            // 结果处理
            foreach ($result as  $value) {
                if (is_array($value)) {
                    // 二维数组(多图上传)
                    foreach ($result as $key=>&$val) {
                        $imgFile = Image::open('./uploads/'.$val['filepath']);
                        //是否压缩
                        if($compress!=2){
                            $imgFile->thumb(750,350); //制作缩略图(750*350)
                        }
                        //是否水印
                        if($watermark!=2){
                            $imgFile->text(get_db_config_data(1,"site_name"),ROOT_PATH.'public/static/font/sy.otf',8,"#545454",9,'',10);
                        }
                        $imgFile->save('./uploads/'.$val['filepath'], $val['fileext'], 100);
                        $val['img_url'] = get_image_url($val['filepath']);
                    }
                } else {
                    // 一维数组(单图上传)
                    $imgFile = Image::open('./uploads/'.$result['filepath']);
                    //是否压缩
                    if($compress!=2) {
                        $imgFile->thumb(750,350); //制作缩略图(750*350)
                    }
                    //是否水印
                    if($watermark!=2){
                        $imgFile->text(get_db_config_data(1,"site_name"),ROOT_PATH.'public/static/font/sy.otf',8,"#545454",9,'',10);
                    }
                    $imgFile->save('./uploads/' . $result['filepath'], $result['fileext'], 100);
                    $result['img_url'] = get_image_url( $result['filepath']);
                }
            }
            return ok_msg('上传成功',$result);
        }else{
            return  err_msg('上传失败',$result);
        }
    }
    /**
     * @Apidoc\Title("文件上传")
     * @Apidoc\Author("pengking")
     * @Apidoc\Param("form_name", type="file", require=true, desc="文件")
     * @Apidoc\Param("save_dir", type="string", require=false,default="api", desc="保存路径")
     */
    public  function  uploadFile(){
        $save_dir= request()->param('save_dir','api');
        $result = upload_file("form_name",$save_dir);

        if($result){

            $result['file_url'] = env('DOMAIN.IMG_URL') . $result['filePath'];
            return ok_msg('上传成功',$result);
        }else{
            return  err_msg('上传失败',$result);
        }
    }


}