<?php
// 表字段可选的字段类型
$tableFieldTypes = ["int", "tinyint", "integer", "float", "decimal", "char", "varchar", "blob", "text", "point"];
// 表字段可选的验证规则
$tableFieldCheckOptions = [
    ['label'=>'必填','value'=>'require','message'=>'缺少必要参数{$item.field}'],
    ['label'=>'数字','value'=>'number','message'=>'{$item.field}字段类型为数字'],
    ['label'=>'整数','value'=>'integer','message'=>'{$item.field}为整数'],
    ['label'=>'布尔','value'=>'boolean','message'=>'{$item.field}为布尔值'],
];
// 主表默认字段
$tableDefaultRows = [
    [
        'field'=> 'id',
        'desc'=> '唯一id',
        'type'=> 'int',
        'length'=> 11,
        'default'=> '',
        'not_null'=> true,
        'main_key'=> true,
        'incremental'=> true,
        'query'=> false,
        'list'=> true,
        'detail'=> true,
        'add'=> false,
        'edit'=> false
    ],
    [
        'field'=> 'guid',
        'desc'=> '系统唯一值',
        'type'=> 'varchar',
        'length'=> 50,
        'default'=> '',
        'not_null'=> false,
        'main_key'=> false,
        'incremental'=> false,
        'query'=> false,
        'list'=> true,
        'detail'=> true,
        'add'=> false,
        'edit'=> true
    ],
    [
        'field'=> 'uu_guid',
        'desc'=> '用户唯一id',
        'type'=> 'varchar',
        'length'=> 50,
        'default'=> '',
        'not_null'=> false,
        'main_key'=> false,
        'incremental'=> false,
        'query'=> false,
        'list'=> true,
        'detail'=> true,
        'add'=> false,
        'edit'=> false
    ],
    [
        'field'=> 'create_time',
        'desc'=> '创建时间',
        'type'=> 'int',
        'length'=> 10,
        'default'=> '',
        'not_null'=> false,
        'main_key'=> false,
        'incremental'=> false,
    ],
    [
        'field'=> 'update_time',
        'desc'=> '更新时间',
        'type'=> 'int',
        'length'=> 10,
        'default'=> '',
        'not_null'=> false,
        'main_key'=> false,
        'incremental'=> false,
    ],
    [
        'field'=> 'create_user',
        'desc'=> '后台创建人',
        'type'=> 'int',
        'length'=> 10,
        'default'=> '',
        'not_null'=> false,
        'main_key'=> false,
        'incremental'=> false,
    ],
    [
        'field'=> 'update_user',
        'desc'=> '后台更新人',
        'type'=> 'int',
        'length'=> 10,
        'default'=> '',
        'not_null'=> false,
        'main_key'=> false,
        'incremental'=> false,
    ],
    [
        'field'=> 'mark',
        'desc'=> '有效标识:1正常 0删除',
        'type'=> 'tinyint',
        'length'=> 3,
        'default'=> '1',
        'not_null'=> false,
        'main_key'=> false,
        'incremental'=> false,
    ]
    ,
    [
        'field'=> 'status',
        'desc'=> '显示状态:1正常 2隐藏',
        'type'=> 'tinyint',
        'length'=> 3,
        'default'=> '1',
        'not_null'=> false,
        'main_key'=> false,
        'incremental'=> false,
        'query'=> false,
        'list'=> true,
        'detail'=> true,
        'add'=> true,
        'edit'=> true
    ]
];

// crud的表配置自定义列
$crudTableColumns=[

    [
        'title'=>'验证',
        'field'=>'check',
        'type'=>'select',
        'width'=>180,
        'props'=>[
            'placeholder'=>'请输入',
            'mode' =>'multiple',
            'maxTagCount'=>1,
            'options'=>$tableFieldCheckOptions
        ],
    ],
    [
        'title'=>'查询',
        'field'=>'query',
        'type'=>'checkbox',
        'width'=>60
    ],

    [
        'title'=>'列表',
        'field'=>'list',
        'type'=>'checkbox',
        'width'=>60
    ],
    [
        'title'=>'明细',
        'field'=>'detail',
        'type'=>'checkbox',
        'width'=>60
    ],
    [
        'title'=>'新增',
        'field'=>'add',
        'type'=>'checkbox',
        'width'=>60
    ],
    [
        'title'=>'编辑',
        'field'=>'edit',
        'type'=>'checkbox',
        'width'=>60
    ]
];
// 模型名规则
$modelNameRules=[
    ['pattern'=>'^[A-Z]{1}([a-zA-Z0-9]|[._]){2,19}$','message'=>'模型文件名错误，请输入大写字母开头的字母+数字，长度2-19的组合']
];
// 表名规则
$tableNameRules=[
    ['pattern'=>'^[a-z]{1}([a-z0-9]|[_]){2,19}$','message'=>'表名错误，请输入小写字母开头的字母+数字/下划线，长度2-19的组合']
];
return [
    // 文档标题
    'title'              => '腾青科技',
    // 文档描述
    'desc'               => '内部接口文档',
    // 默认请求类型
    'default_method'=>'POST',
    // 允许跨域访问
    'allowCrossDomain'=>true,
    // 设置可选版本
    // 设置可选版本
    'apps'           => [
        ['title'=>'前端接口','path'=>'app\api\controller','folder'=>'api',
        'groups'=> [
                ['title'=>'核心接口','name'=>'sys',
                    'children'=>[

                        ['title'=>'微信','name'=>'weixin'],
                        ['title'=>'用户','name'=>'user'],
                        ['title'=>'首页','name'=>'index'],
                        ['title'=>'其他','name'=>'sys'],
                    ]],
                ['title'=>'功能','name'=>'fun'],
                ['title'=>'接口生成','name'=>'auto'],
                ['title'=>'测试','name'=>'test'],
            ]],
        ['title'=>'其他接口','path'=>'app\other\controller','folder'=>'other'],
        ['title'=>'开放平台','path'=>'app\open\controller','folder'=>'open'],

    ],
    // markdown 文档
    'docs' => [
        ['title'=>'软件介绍','path'=>'docs/Software','password'=>'other'],
        ['title'=>'开发规范','path'=>'docs/standard'],
        ['title'=>'开发流程','path'=>'docs/DevelopmentProcess'],
        ['title'=>'数据库字典','path'=>'docs/dictionary'],
        ['title'=>'第三方调用规范','path'=>'docs/open'],
        ['title'=>'状态码','path'=>'docs/statusCode'],

    ],
    // 自动生成url规则
    'auto_url' => [
        // 字母规则
        'letter_rule' => "lcfirst",
        // 多级路由分隔符
        'multistage_route_separator'  =>"."
    ],
    // 指定公共注释定义的文件地址
    'definitions'        => "app\common\controller\Definitions",
    // 缓存配置
    'cache'              => [
        // 是否开启缓存
        'enable' => false,
    ],
    // 权限认证配置
    'auth'               => [
        // 是否启用密码验证
        'enable'     => false,
        // 全局访问密码
        'password'   => "Tq2017@321.",
        // 密码加密盐
        'secret_key' => "apidoc#hg_code",
        // 有效期
        'expire' => 24*60*60
    ],
    // 统一的请求Header
    'headers'=>[],
    // 统一的请求参数Parameters
    'parameters'=>[],
    // 统一的请求响应体
    'responses'=>[
        ['name'=>'code','desc'=>'状态码','type'=>'int'],
        ['name'=>'msg','desc'=>'提示信息','type'=>'string'],
        ['name'=>'time','desc'=>'响应时间','type'=>'int'],
        ['name'=>'data','desc'=>'数据','main'=>true,'type'=>'json'],
    ],
    'generator' =>[
        [
            'title'=>'单一接口生成',
            'enable'=>true,
            'middleware'=>[
                \app\api\middleware\CreateCrudMiddleware::class
            ],
            'form' =>[
                'colspan'=>3,
                'items'=>[
                    [
                        'title'=>'控制器标题',
                        'field'=>'controller_title',
                        'type'=>'input'
                    ],
                ]
            ],
            'files'=>[
                [
                    'path'=>'app\${app[0].folder}\controller\auto\${app[1].folder}',
                    'namespace'=>'app\${app[0].folder}\controller\auto\${app[1].folder}',
                    'template'=>'app\other\template\crud\controller.tpl',
                    'name'=>'controller',
                    'rules'=>[
                        ['required'=>true,'message'=>'请输入控制器文件名'],
                        ['pattern'=>'^[A-Z]{1}([a-zA-Z0-9]|[._]){2,19}$','message'=>'请输入正确的目录名'],
                    ]
                ],
//                [
//                    'name'=>'service',
//                    'path'=>'app\${app[0].folder}\services',
//                    'template'=>'app\other\template\crud\service.tpl',
//                ],
//                [
//                    'name'=>'validate',
//                    'path'=>'app\${app[0].folder}\validate',
//                    'template'=>'app\other\template\crud\validate.tpl',
//                ],
//                [
//                    'name'=>'route',
//                    'path'=>'app\${app[0].folder}\route\${app[0].folder}.php',
//                    'template'=>'app\other\template\crud\route.tpl',
//                ],
            ],
            'table'=>[
                'field_types'=>$tableFieldTypes,
                'items'=>[
                    [
                        'title'=>'数据表',
                        'namespace'=>'app\api\model\auto',
                        'path'=>"app\api\model\auto",
                        'template'=>'app\other\template\crud\model.tpl',
                        'model_rules'=>$modelNameRules,
                        'table_rules'=>$tableNameRules,
                        'columns'=>$crudTableColumns,
                        'default_fields'=>$tableDefaultRows,
                        'default_values'=>[
                            'type'=>'varchar',
                            'length'=>255,
                            'list'=>true,
                            'detail'=>true,
                            'add'=>true,
                            'edit'=>true,
                        ],
                    ],
                ]
            ]
        ],


    ]

];