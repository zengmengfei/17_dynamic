<?php

namespace app\api\controller\sys;
use hg\apidoc\annotation as Apidoc;
use app\common\controller\ApiBase;
use Fukuball\Jieba\Jieba;  //必须
use Fukuball\Jieba\Finalseg;
use Fukuball\Jieba\JiebaAnalyse;
use think\Validate;

//关键词提取

// 必须有，且内存不小于1024M
ini_set('memory_limit', '1024M');
/**
 * @Apidoc\Title("系统分词")
 * @Apidoc\Group("sys")
 */

class Participle extends ApiBase
{

    public function __construct(array $options = [])
    {
        Jieba::init(); //必须
        Finalseg::init();
        JiebaAnalyse::init();

    }

    public function tokenize($text,$stopwords = [])
    {
        $tokens = Jieba::cutForSearch($text);
        return $tokens;
    }
    //不需要登录接口
    protected $noNeedLogin = ['fenci'];
    /**
     * @Apidoc\Title("分词")
     * @Apidoc\Author("pengking")
     * @Apidoc\Param("title", type="string",require=true,desc="分词内容" )
     * @Apidoc\Returned("data", type="string", desc="系统配置")
     */
    public  function  fenci(){
        //数据验证
        $validate = new Validate;
        $validate->rule([
            'title' => 'require',
        ]);
        $validate->message([
            'title.require' => '内容不能为空',
        ]);
        $params = request()->param();
        if (!$validate->check($params)) {
            return err_msg($validate->getError());
        }

        Jieba::loadUserDict(public_path()."/static/fenci.txt");
        $res = Jieba::cut($params['title'],false);
        //echo letter_avatar($params['title']);
        if(!empty($res)){
            return ok_msg('成功',$res);
        }else{
            return err_msg('失败');
        }


    }
}