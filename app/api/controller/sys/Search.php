<?php

namespace app\api\controller\sys;
use hg\apidoc\annotation as Apidoc;
use app\common\controller\ApiBase;
use think\facade\Db;
use TeamTNT\TNTSearch\TNTSearch;
use app\api\controller\sys\Participle;

/**
 * @Apidoc\Title("全文搜索")
 * @Apidoc\Group("sys")
 */
class Search extends ApiBase
{
    //不需要登录接口
    protected $noNeedLogin = ['get_config_data', 'wx_callback'];
    protected $indexName="title";
    protected $config=[];
    protected $tnt;
    public function __construct()
    {
        $config=[
            'driver' => 'mysql',
            'host' => config("database.hostname"),
            'database' => config("database.database"),
            'username' => config("database.username"),
            'password' => config("database.password"),
            'storage' => ROOT_PATH.'public/tntsearch/examples/',
            'stemmer' => \TeamTNT\TNTSearch\Stemmer\PorterStemmer::class//optional
        ];

        $this->config=$config;
        $this->tnt = new TNTSearch;
        $this->tnt->loadConfig($this->config);

    }

    /**
     * 创建索引
     * @param $token
     */

    public function createIndex($token){
        $indexer = $this->tnt->createIndex($this->indexName);
        $indexer->query('SELECT id, title FROM goods;');
        $indexer->setTokenizer($token);
        $indexer->inMemory = false;
        $indexer->run();
    }

    /**
     * @param $keyword
     * @return array
     * @throws \TeamTNT\TNTSearch\Exceptions\IndexNotFoundException
     */

    public function search($keyword){
        $tnt=$this->tnt;
        $tnt->selectIndex($this->indexName);
        $tnt->fuzziness = true;
        $tnt->setTokenizer();
        $res = $tnt->search($keyword);
        return $res;
    }

    /**
     * 初始化索引文件
     */

    public function index(){
        $token=new JiebaTokenizer();
        (new TNTSearchService())->createIndex($token);
    }

    /**
     * 搜索
     * @throws \TeamTNT\TNTSearch\Exceptions\IndexNotFoundException
     */

    public function search_test(){

        $res= (new TNTSearchService())->search('文玩铁核桃');

        dump($res);

    }

}