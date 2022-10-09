# 数据库结构：tt_tenqent_com
## asda：pk_aa
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(10) unsigned|NO|||
|create_user|int(10) unsigned|NO|0|添加人|
|create_time|int(10) unsigned|NO|0|创建时间|
|update_user|int(10) unsigned|NO|0|更新人|
|update_time|int(10) unsigned|NO|0|更新时间|
|mark|tinyint(3) unsigned|NO|1|有效标识|
|test|int(10) unsigned|NO|0|测试|
|zxc|varchar(200)|NO||zxc|
|asf|varchar(200)|NO||safas|
|name|varchar(200)|NO||名称|
## 系统行为日志表：pk_action_log_2021_12
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||唯一性标识|
|username|varchar(60)|YES||操作人用户名|
|method|varchar(20)|YES||请求类型|
|module|varchar(30)|YES||模型|
|url|varchar(200)|YES||操作页面|
|param|text|YES||请求参数(JSON格式)|
|title|varchar(100)|YES||日志标题|
|type|tinyint(1) unsigned|YES|0|操作类型：1登录系统 2注销系统 3操作日志|
|content|varchar(1000)|YES||内容|
|ip|varchar(18)|YES||IP地址|
|ip_city|varchar(150)|YES||IP所属城市|
|os|varchar(50)|YES||操作系统|
|browser|varchar(255)|YES||浏览器|
|user_agent|varchar(360)|YES||User-Agent|
|create_user|int(11) unsigned|YES|0|添加人|
|create_time|int(11) unsigned|YES|0|添加时间|
|mark|tinyint(1) unsigned|NO|1|有效标识：1正常 0删除|
## 系统行为日志表：pk_action_log_2022_01
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||唯一性标识|
|username|varchar(60)|YES||操作人用户名|
|method|varchar(20)|YES||请求类型|
|module|varchar(30)|YES||模型|
|url|varchar(200)|YES||操作页面|
|param|text|YES||请求参数(JSON格式)|
|title|varchar(100)|YES||日志标题|
|type|tinyint(1) unsigned|YES|0|操作类型：1登录系统 2注销系统 3操作日志|
|content|varchar(1000)|YES||内容|
|ip|varchar(18)|YES||IP地址|
|ip_city|varchar(150)|YES||IP所属城市|
|os|varchar(50)|YES||操作系统|
|browser|varchar(255)|YES||浏览器|
|user_agent|varchar(360)|YES||User-Agent|
|create_user|int(11) unsigned|YES|0|添加人|
|create_time|int(11) unsigned|YES|0|添加时间|
|mark|tinyint(1) unsigned|NO|1|有效标识：1正常 0删除|
## 系统行为日志表：pk_action_log_2022_02
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||唯一性标识|
|username|varchar(60)|YES||操作人用户名|
|method|varchar(20)|YES||请求类型|
|module|varchar(30)|YES||模型|
|url|varchar(200)|YES||操作页面|
|param|text|YES||请求参数(JSON格式)|
|title|varchar(100)|YES||日志标题|
|type|tinyint(1) unsigned|YES|0|操作类型：1登录系统 2注销系统 3操作日志|
|content|varchar(1000)|YES||内容|
|ip|varchar(18)|YES||IP地址|
|ip_city|varchar(150)|YES||IP所属城市|
|os|varchar(50)|YES||操作系统|
|browser|varchar(255)|YES||浏览器|
|user_agent|varchar(360)|YES||User-Agent|
|create_user|int(11) unsigned|YES|0|添加人|
|create_time|int(11) unsigned|YES|0|添加时间|
|mark|tinyint(1) unsigned|NO|1|有效标识：1正常 0删除|
## 广告管理表：pk_ad
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(10) unsigned|NO||主键ID|
|title|varchar(100)|NO||广告标题|
|ad_sort_id|smallint(5) unsigned|NO|0|广告位ID|
|cover|varchar(255)|YES||广告图片|
|type|tinyint(1) unsigned|NO|0|广告格式：1图片 2文字 3视频 4推荐|
|description|varchar(150)|YES||广告描述|
|content|text|YES||广告内容|
|url|text|YES||广告链接|
|width|int(11) unsigned|NO|0|广告宽度|
|height|int(11) unsigned|NO|0|广告高度|
|start_time|int(11) unsigned|NO||开始时间|
|end_time|int(11) unsigned|NO|0|结束时间|
|view_num|int(10) unsigned|NO|0|广告点击次数|
|status|tinyint(1) unsigned|NO|1|状态：1在用 2停用|
|sort|smallint(5) unsigned|NO|125|排序|
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|添加时间|
|update_user|int(11) unsigned|NO|0|更新人|
|update_time|int(11) unsigned|NO|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标识(1正常 0删除)|
## 广告位管理表：pk_ad_sort
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(10) unsigned|NO||主键ID|
|name|varchar(50)|NO||广告位名称|
|description|varchar(255)|NO||广告位描述|
|item_id|int(10) unsigned|NO|0|站点ID|
|cate_id|smallint(5) unsigned|NO|0|栏目ID|
|loc_id|smallint(5) unsigned|NO|0|广告页面位置|
|platform|tinyint(1) unsigned|NO|1|站点类型：1PC网站 2WAP手机站 3微信小程序 4APP移动端|
|sort|smallint(5) unsigned|NO|125|广告位排序|
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|添加时间|
|update_user|int(11) unsigned|NO|0|更新人|
|update_time|int(11) unsigned|NO|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标识(1正常 0删除)|
## 区划表：pk_area
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|bigint(20)|NO||id|
|pid|bigint(20)|YES||父级id|
|code|bigint(20)|YES||编码|
|name|char(30)|YES||名称|
|carete_time|int(11)|YES||创建时间|
|create_user|int(11)|YES||添加人|
|update_time|int(11)|YES||更新时间|
|update_user|int(11)|YES||更新人|
|mark|tinyint(1)|YES|1|有效标识(1正常 0删除)|
## 文章管理表：pk_article
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(10) unsigned|NO||唯一性标识|
|title|varchar(150)|NO||文章标题|
|cover|varchar(150)|NO||首张图片编号|
|item_id|smallint(5) unsigned|NO|0|站点ID|
|cate_id|smallint(5) unsigned|NO|0|栏目ID|
|status|tinyint(1) unsigned|NO|1|状态：1显示 2不显示|
|browse|int(10) unsigned|NO|0|浏览量|
|sort|int(11) unsigned|NO|0|排序号|
|create_user|int(10) unsigned|NO|0|添加人|
|create_time|int(10) unsigned|NO|0|添加时间|
|update_user|int(10) unsigned|NO|0|更新人|
|update_time|int(10) unsigned|NO|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标记|
## 文章管理附表：pk_article_0
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||唯一性标识|
|author|varchar(20)|YES||作者|
|source_name|varchar(20)|YES||来源名称|
|source_url|varchar(100)|YES||来源链接|
|guide|varchar(255)|YES||文章导读|
|imgs|text|YES||图集|
|content|text|NO||文章内容|
|tags|text|YES||关键词序列化|
## 文章管理附表：pk_article_1
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||唯一性标识|
|author|varchar(20)|YES||作者|
|source_name|varchar(20)|YES||来源名称|
|source_url|varchar(100)|YES||来源链接|
|guide|varchar(255)|YES||文章导读|
|imgs|text|YES||图集|
|content|text|NO||文章内容|
|tags|text|YES||关键词序列化|
## 文章管理附表：pk_article_2
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||唯一性标识|
|author|varchar(20)|YES||作者|
|source_name|varchar(20)|YES||来源名称|
|source_url|varchar(100)|YES||来源链接|
|guide|varchar(255)|YES||文章导读|
|imgs|text|YES||图集|
|content|text|NO||文章内容|
|tags|text|YES||关键词序列化|
## 文章管理附表：pk_article_3
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||唯一性标识|
|author|varchar(20)|YES||作者|
|source_name|varchar(20)|YES||来源名称|
|source_url|varchar(100)|YES||来源链接|
|guide|varchar(255)|YES||文章导读|
|imgs|text|YES||图集|
|content|text|NO||文章内容|
|tags|text|YES||关键词序列化|
## 文章管理附表：pk_article_4
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||唯一性标识|
|author|varchar(20)|YES||作者|
|source_name|varchar(20)|YES||来源名称|
|source_url|varchar(100)|YES||来源链接|
|guide|varchar(255)|YES||文章导读|
|imgs|text|YES||图集|
|content|text|NO||文章内容|
|tags|text|YES||关键词序列化|
## 文章管理附表：pk_article_5
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||唯一性标识|
|author|varchar(20)|YES||作者|
|source_name|varchar(20)|YES||来源名称|
|source_url|varchar(100)|YES||来源链接|
|guide|varchar(255)|YES||文章导读|
|imgs|text|YES||图集|
|content|text|NO||文章内容|
|tags|text|YES||关键词序列化|
## 文章管理附表：pk_article_6
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||唯一性标识|
|author|varchar(20)|YES||作者|
|source_name|varchar(20)|YES||来源名称|
|source_url|varchar(100)|YES||来源链接|
|guide|varchar(255)|YES||文章导读|
|imgs|text|YES||图集|
|content|text|NO||文章内容|
|tags|text|YES||关键词序列化|
## 文章管理附表：pk_article_7
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||唯一性标识|
|author|varchar(20)|YES||作者|
|source_name|varchar(20)|YES||来源名称|
|source_url|varchar(100)|YES||来源链接|
|guide|varchar(255)|YES||文章导读|
|imgs|text|YES||图集|
|content|text|NO||文章内容|
|tags|text|YES||关键词序列化|
## 文章管理附表：pk_article_8
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||唯一性标识|
|author|varchar(20)|YES||作者|
|source_name|varchar(20)|YES||来源名称|
|source_url|varchar(100)|YES||来源链接|
|guide|varchar(255)|YES||文章导读|
|imgs|text|YES||图集|
|content|text|NO||文章内容|
|tags|text|YES||关键词序列化|
## 文章管理附表：pk_article_9
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||唯一性标识|
|author|varchar(20)|YES||作者|
|source_name|varchar(20)|YES||来源名称|
|source_url|varchar(100)|YES||来源链接|
|guide|varchar(255)|YES||文章导读|
|imgs|text|YES||图集|
|content|text|NO||文章内容|
|tags|text|YES||关键词序列化|
## 第三方授权分组表：pk_auth_group
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|mediumint(8) unsigned|NO||id|
|title|char(100)|NO||分组|
|status|tinyint(1)|NO|1|状态：1正常 2禁用|
|rules|char(80)|NO||规则：
多个以逗号分隔|
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|创建时间|
|update_user|int(11) unsigned|YES|0|更新人|
|update_time|int(11) unsigned|YES|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标识(1正常 0删除)|
## 第三方授权秘钥表：pk_auth_group_access
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|uid|mediumint(8) unsigned|NO||uid|
|group_id|mediumint(8) unsigned|NO||组id|
|id|int(11)|NO||id|
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|创建时间|
|update_user|int(11) unsigned|YES|0|更新人|
|update_time|int(11) unsigned|YES|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标识(1正常 0删除)|
## 第三方授权规则表：pk_auth_rule
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|mediumint(8) unsigned|NO||id|
|name|char(80)|NO||规则名称|
|title|char(20)|NO||规则标题|
|status|tinyint(1)|NO|1|状态：1正常 2禁用|
|type|tinyint(1)|NO|1|类型|
|condition|char(100)|NO||条件|
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|创建时间|
|update_user|int(11) unsigned|YES|0|更新人|
|update_time|int(11) unsigned|YES|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标识(1正常 0删除)|
## 第三方授权表：pk_auth_user
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(10) unsigned|NO||主键ID|
|nickname|varchar(150)|YES||昵称|
|mobile|char(11)|YES||手机号码|
|email|varchar(30)|YES||邮箱地址|
|authorization_expiration_time|int(11) unsigned|YES|0|授权到期日期|
|username|varchar(50)|NO||登录用户名|
|password|varchar(150)|YES||登录密码|
|salt|varchar(30)|YES||盐加密|
|status|tinyint(1) unsigned|NO|1|状态：1正常 2禁用|
|note|varchar(500)|YES||备注|
|sort|smallint(5) unsigned|NO|125|显示顺序|
|login_num|smallint(6) unsigned|NO|0|登录次数|
|login_ip|varchar(20)|YES||最近登录IP|
|login_time|int(11) unsigned|NO|0|最近登录时间|
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|创建时间|
|update_user|int(11) unsigned|YES|0|更新人|
|update_time|int(11) unsigned|YES|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标识(1正常 0删除)|
## 报事信息表：pk_baoshi
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(10) unsigned|NO|||
|guid|int(11)|YES||案件唯一标识|
|mb_guid|int(11)|NO|0|前台用户表guid|
|name|varchar(20)|YES||报案人姓名|
|mobile|varchar(20)|YES||报案人手机|
|title|varchar(255)|YES||标题|
|content|varchar(500)|YES||内容|
|caseitem1|int(11)|NO|0|分类1|
|caseitem2|int(11)|NO|0|分类2|
|caseitem3|int(11)|NO|0|分类3|
|qbm|varchar(6)|YES||区编码|
|jbm|varchar(9)|YES||街道编码|
|sqbm|varchar(12)|YES||社区编码|
|wgbm|varchar(15)|YES||网格编码|
|longitude|varchar(32)|YES||经度|
|latitude|varchar(32)|YES||纬度|
|imgs|varchar(500)|YES||图片信息，json格式|
|status|tinyint(4)|NO|1|案件状态 1新案件  2已受理 3已完结|
|is_shangbao|tinyint(4)|NO||是否上报  1上报社区 2上报12345|
|create_time|int(11)|YES|||
|update_time|int(11)|YES|||
|mark|tinyint(4)|YES||有效标识(1正常 0删除)|
## 报事-事项分类：pk_baoshi_caseitem
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|smallint(5)|NO|||
|name|varchar(64)|YES||事项分类|
|pid|int(5)|YES||父级id|
|path|varchar(255)|YES||路径|
|grade|tinyint(1)|NO|1|等级，一共3级|
|status|tinyint(1)|NO|1|状态 1正常 2禁用|
|create_time|datetime|YES|||
|update_time|datetime|YES|||
|mark|tinyint(1)|NO|1|有效标识(1正常 0删除)|
## ：pk_baoshi_evaluate
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(10) unsigned|NO|||
|bs_guid|int(11)|NO||报事表guid|
|mb_guid|int(11)|NO||用户表guid|
|satisfaction|tinyint(4)|NO|0|评价1-5分,满意度|
|manner|tinyint(4)|NO|0|评价1-5分,处理态度|
|efficiency|tinyint(4)|NO|0|评价1-5分,效率|
|content|varchar(500)|NO||评价内容|
|create_user|varchar(20)|NO||创建人|
|create_time|datetime|NO||创建时间|
|mark|tinyint(4)|NO|1|有效标识(1正常 0删除)|
## 报事-流程表：pk_baoshi_path
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO|||
|bs_guid|int(11)|YES||报事guid|
|title|varchar(255)|NO||标题|
|content|varchar(255)|YES||内容|
|ip|varchar(30)|YES||ip地址|
|create_user|varchar(20)|YES||创建人|
|create_time|datetime|NO||创建时间|
|mark|tinyint(4)|NO|1|有效标识(1正常 0删除)|
## 公共聊天记录表：pk_chat_room_log
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|bigint(20)|NO|||
|openid|varchar(100)|YES||发送消息人openid|
|mb_guid|varchar(100)|NO||用户guid|
|content|text|YES||消息内容|
|add_time|int(10)|YES||发送时间|
|chat_time|varchar(20)|YES|||
|status|tinyint(1)|YES|0|状态 0正常 1用户撤回  2网格员删除 3用户禁用发送内容|
|qbm|varchar(20)|YES||区编码|
|jbm|varchar(20)|YES||街编码|
|sqbm|varchar(20)|YES||社区编码|
|wgbm|varchar(30)|YES||网格编码|
|msgtype|varchar(50)|YES||消息类型 MP3 text |
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|添加时间|
|update_user|int(11) unsigned|NO|0|更新人|
|update_time|int(11) unsigned|NO|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标识(1正常 0删除)|
## 社区聊天表：pk_chat_sq_room
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||主键ID|
|member_id|int(11)|NO||送消息人id|
|content|text|YES||消息内容|
|status|tinyint(1)|YES|0|状态: 0正常 1用户撤回 2网格员删除 3用户禁用发送内容|
|sbm|int(4)|YES||市编码|
|qbm|int(6)|YES||区编码|
|jbm|int(9)|YES||街编码|
|sqbm|bigint(12)|YES||社区编码|
|msgtype|varchar(50)|YES||消息类型 MP3 text |
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|添加时间|
|update_user|int(11) unsigned|NO|0|更新人|
|update_time|int(11) unsigned|NO|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标识|
## 网格聊天表：pk_chat_wg_room
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||主键ID|
|member_id|int(11)|NO||送消息人id|
|content|text|YES||消息内容|
|status|tinyint(1)|YES|0|状态: 0正常 1用户撤回 2网格员删除 3用户禁用发送内容|
|sbm|int(4)|YES||市编码|
|qbm|int(6)|YES||区编码|
|jbm|int(9)|YES||街编码|
|sqbm|bigint(12)|YES||社区编码|
|wgbm|bigint(15)|YES||网格编码|
|msgtype|varchar(50)|YES||消息类型 MP3 text |
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|添加时间|
|update_user|int(11) unsigned|NO|0|更新人|
|update_time|int(11) unsigned|NO|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标识|
## 行政区划表：pk_city
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||编号|
|pid|int(11) unsigned|NO|0|父级编号|
|level|tinyint(1) unsigned|NO|0|城市级别：1省 2市 3区|
|name|varchar(50)|NO||城市名称|
|citycode|varchar(10)|NO||城市编号（区号）|
|p_adcode|varchar(10)|YES||父级地理编号|
|adcode|varchar(10)|YES||地理编号|
|lng|int(11) unsigned|YES||城市坐标中心点经度（* 1e6）：如果是中国，此值是 1e7|
|lat|int(11) unsigned|YES||城市坐标中心点纬度（* 1e6）|
|sort|tinyint(3) unsigned|NO|125|排序号|
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|YES|0|添加时间|
|update_user|int(11) unsigned|NO|0|更新人|
|update_time|int(11) unsigned|YES|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标记|
## 配置分组表：pk_config
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||主键ID|
|name|varchar(30)|NO||分组名称|
|sort|tinyint(2)|NO||排序|
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|添加时间|
|update_user|int(11) unsigned|NO|0|更新人|
|update_time|int(11) unsigned|NO|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标识|
## 配置表：pk_config_data
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||主键ID|
|title|varchar(50)|NO||配置标题|
|code|varchar(100)|NO||配置编码|
|value|text|NO||配置值|
|options|varchar(255)|NO||配置项|
|config_id|int(11) unsigned|NO|0|配置ID|
|type|varchar(16)|NO||配置类型|
|status|tinyint(1) unsigned|NO|1|状态：1正常 2停用|
|sort|smallint(3) unsigned|NO|0|排序|
|note|varchar(500)|NO||配置说明|
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|添加时间|
|update_user|int(11) unsigned|NO|0|更新人|
|update_time|int(11) unsigned|NO|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标识：1正常 0删除|
## 咨询求助表：pk_consult
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(10) unsigned|NO|||
|mb_guid|int(11)|NO||用户编码-提交人|
|content|varchar(500)|YES||内容|
|wg_guid|int(11)|YES||网格员编码-审核|
|reply_content|varchar(255)|YES||回复内容|
|reply_time|datetime|YES||回复时间|
|sqbm|char(12)|YES||社区编码|
|create_time|int(11)|YES||创建时间|
|update_time|int(11)|YES||修改时间|
|status|tinyint(4)|NO|1|状态 1新添加 2已回复|
## 部门表：pk_dept
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||主键ID|
|name|varchar(50)|NO||部门名称|
|code|varchar(150)|NO||部门编码|
|fullname|varchar(150)|NO||部门全称|
|type|tinyint(1) unsigned|NO|0|类型：1公司 2子公司 3部门 4小组|
|pid|int(11) unsigned|NO|0|上级ID|
|sort|smallint(5) unsigned|NO|125|排序|
|note|varchar(255)|YES||备注说明|
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|添加时间|
|update_user|int(11) unsigned|NO|0|更新人|
|update_time|int(11) unsigned|NO|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标识|
## 字典类型表：pk_dict
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||主键ID|
|name|varchar(30)|NO||字典名称|
|code|varchar(50)|NO||字典值|
|sort|smallint(5) unsigned|NO|125|显示顺序|
|note|varchar(255)|YES||字典备注|
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|添加时间|
|update_user|int(11) unsigned|NO|0|更新人|
|update_time|int(11) unsigned|NO|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标识|
## 字典项管理表：pk_dict_data
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||主键ID|
|name|varchar(50)|NO||字典项名称|
|code|varchar(50)|NO||字典项值|
|dict_id|int(10) unsigned|NO|0|字典ID|
|status|tinyint(1) unsigned|NO|1|状态：1在用 2停用|
|note|varchar(300)|YES||备注|
|sort|smallint(5) unsigned|NO|125|显示顺序|
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|添加时间|
|update_user|int(11) unsigned|NO|0|更新人|
|update_time|int(11) unsigned|NO|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标记|
## 残疾人：pk_disability
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||id|
|name|varchar(50)|NO||名称|
|status|tinyint(1)|NO|1|状态：1正常 2禁用|
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|添加时间|
|update_user|int(11) unsigned|NO|0|更新人|
|update_time|int(11) unsigned|NO|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标识(1正常 0删除)|
## 学历：pk_education
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||id|
|name|varchar(50)|NO||名称|
|status|tinyint(1)|NO|1|状态：1正常 2禁用|
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|添加时间|
|update_user|int(11) unsigned|NO|0|更新人|
|update_time|int(11) unsigned|NO|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标识(1正常 0删除)|
## 演示案例一：pk_example
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(10) unsigned|NO||唯一性标识|
|name|varchar(30)|NO||测试名称|
|gender|tinyint(1) unsigned|NO|1|性别：1男 2女 3保密|
|avatar|varchar(255)|YES||头像|
|type|int(10) unsigned|YES|1|类型：1阿里云 2腾讯云 3华为云 4百度云 5亚马逊|
|status|tinyint(1) unsigned|YES|1|状态：1正常 2停用|
|is_vip|tinyint(1) unsigned|YES|2|是否VIP：1是 2否|
|sort|smallint(5) unsigned|YES|125|显示顺序|
|note|varchar(255)|YES||备注|
|create_user|int(10) unsigned|YES|0|添加人|
|create_time|int(10) unsigned|YES|0|添加时间|
|update_user|int(10) unsigned|YES|0|更新人|
|update_time|int(10) unsigned|YES|0|更新时间|
|mark|tinyint(1) unsigned|YES|1|有效标识|
## 演示案例二：pk_example2
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(10) unsigned|NO||唯一性标识|
|name|varchar(30)|NO||测试名称|
|gender|tinyint(1) unsigned|NO|1|性别：1男 2女 3保密|
|status|tinyint(1) unsigned|YES|1|状态：1正常 2停用|
|sort|smallint(5) unsigned|YES|125|显示顺序|
|note|varchar(255)|YES||备注|
|create_user|int(10) unsigned|YES|0|添加人|
|create_time|int(10) unsigned|YES|0|添加时间|
|update_user|int(10) unsigned|YES|0|更新人|
|update_time|int(10) unsigned|YES|0|更新时间|
|mark|tinyint(1) unsigned|YES|1|有效标识|
## 意见反馈表：pk_feedback
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(10) unsigned|NO|||
|mb_guid|int(11)|NO||用户表guid-提交人|
|content|varchar(500)|NO||内容|
|images|varchar(500)|YES||图片|
|audio|varchar(255)|YES||音频地址|
|wgbm|char(15)|YES||网格编码|
|is_overt|tinyint(4)|NO|1|是否公开 1公开 2不公开|
|wg_guid|int(11)|YES||网格员id-审核|
|reply_content|varchar(255)|YES||回复内容|
|reply_time|datetime|YES||回复时间|
|create_time|int(11)|NO||创建时间|
|update_time|int(11)|NO||修改时间|
|status|tinyint(4)|NO|1|状态 1新提交 2审核通过 3未通过|
|mark|tinyint(4)|NO|1|有效标识(1正常 0删除)|
## 文件管理表：pk_file
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO|||
|name|varchar(150)|NO||文件名|
|length|int(11) unsigned|NO|0|文件大小(KB)|
|url|varchar(150)|NO||文件地址|
|directory|tinyint(1) unsigned|NO|0|是否文件夹：0文件夹 1文件|
|type|tinyint(255) unsigned|NO|0|文件类型：1图片 2文件|
|pid|int(11) unsigned|NO|0|上级ID|
|sort|int(11) unsigned|NO|0|排序|
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|创建时间|
|update_user|int(11) unsigned|YES|0|修改人|
|update_time|int(11) unsigned|YES|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标识：1正常 0删除|
## 重点人：pk_focus
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||id|
|name|varchar(100)|NO||名称|
|status|tinyint(1)|NO|1|状态：1正常 2禁用|
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|添加时间|
|update_user|int(11) unsigned|NO|0|更新人|
|update_time|int(11) unsigned|NO|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标识(1正常 0删除)|
## 自定义表单：pk_from
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(10) unsigned|NO|||
|title|varchar(100)|NO||表单名称|
|table_name|varchar(100)|NO||生成表名|
|status|tinyint(3) unsigned|NO|0|状态：1正常 2禁用|
|create_user|int(10) unsigned|NO|0|添加人|
|create_time|int(10) unsigned|NO|0|创建时间|
|update_user|int(10) unsigned|NO|0|更新人|
|update_time|int(10) unsigned|NO|0|更新时间|
|mark|tinyint(3) unsigned|NO|1|有效标识|
## 表单关联字段：pk_from_field
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(10) unsigned|NO|||
|from_id|int(10) unsigned|NO|0|表单id|
|titlenm|varchar(50)|NO||字段标题|
|name|varchar(50)|NO||字段名|
|def|varchar(100)|NO||默认值|
|type|varchar(50)|NO|text|字段类型|
|sort|int(10) unsigned|NO|0|排序|
|status|tinyint(3) unsigned|NO|1|状态：1 开 0 关|
|create_user|int(10) unsigned|NO|0|添加人|
|create_time|int(10) unsigned|NO|0|创建时间|
|update_user|int(10) unsigned|NO|0|更新人|
|update_time|int(10) unsigned|NO|0|更新时间|
|mark|tinyint(3) unsigned|NO|1|有效标识|
## 表单类型：pk_from_type
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(10) unsigned|NO|||
|title|varchar(50)|NO||类型名称|
|label|varchar(50)|NO||类型标签|
|create_user|int(10) unsigned|NO|0|添加人|
|create_time|int(10) unsigned|NO|0|创建时间|
|update_user|int(10) unsigned|NO|0|更新人|
|update_time|int(10) unsigned|NO|0|更新时间|
|mark|tinyint(3) unsigned|NO|1|有效标识|
## 站点配置表：pk_item
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(10) unsigned|NO||唯一性标识|
|name|varchar(15)|NO||站点名称|
|type|tinyint(3) unsigned|NO|1|站点类型:1普通站点 2其他|
|url|varchar(60)|NO||站点地址|
|image|varchar(100)|NO||站点图片|
|is_domain|tinyint(1) unsigned|NO|1|是否二级域名:1是 2否|
|status|tinyint(1) unsigned|NO|1|状态：1在用 2停用|
|note|varchar(255)|NO||站点备注|
|sort|smallint(5) unsigned|NO|125|显示顺序|
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|添加时间|
|update_user|int(11) unsigned|NO|0|更新人|
|update_time|int(11) unsigned|NO|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标识(1正常 0删除)|
## 栏目管理表：pk_item_cate
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|smallint(10) unsigned|NO||ID|
|name|varchar(30)|NO||栏目名称|
|pid|smallint(5) unsigned|NO|0|父级ID|
|item_id|smallint(5) unsigned|NO|0|站点ID|
|pinyin|varchar(50)|YES||拼音(全)|
|code|varchar(10)|YES||拼音(简)|
|is_cover|tinyint(1) unsigned|NO|1|是否有封面：1是 2否|
|cover|varchar(50)|YES||封面|
|status|tinyint(1) unsigned|NO|1|状态：1启用 2停用|
|note|varchar(200)|YES||备注|
|sort|smallint(5) unsigned|NO|125|排序|
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|添加时间|
|update_user|int(11) unsigned|NO|0|更新人|
|update_time|int(11) unsigned|NO|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标识(1正常 0删除)|
## 页面布局管理：pk_layout
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(10) unsigned|NO||主键ID|
|loc_desc_id|int(11) unsigned|NO|0|页面位置描述ID|
|item_id|int(11) unsigned|NO|0|站点ID|
|type|tinyint(1) unsigned|NO|0|类型：1系统文章 2通知公告|
|type_id|int(10) unsigned|NO|0|对应的类型编号|
|image|varchar(150)|NO||图片路径|
|sort|smallint(5) unsigned|NO|125|显示顺序|
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|添加时间|
|update_user|int(11) unsigned|NO|0|更新人|
|update_time|int(11) unsigned|NO|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标识(1正常 0删除)|
## 布局描述管理：pk_layout_desc
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(10) unsigned|NO||主键ID|
|loc_desc|varchar(100)|NO||页面位置描述|
|loc_id|smallint(5) unsigned|NO|0|位置编号|
|item_id|int(10) unsigned|NO|0|站点ID|
|sort|smallint(3) unsigned|NO|125|排序|
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|添加时间|
|update_user|int(11) unsigned|NO|0|更新人|
|update_time|int(11) unsigned|NO|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标识(1正常 0删除)|
## 职级表：pk_level
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||主键ID|
|name|varchar(30)|NO||职级名称|
|status|tinyint(1) unsigned|NO|1|状态：1正常 2停用|
|sort|smallint(5) unsigned|NO|125|显示顺序|
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11)|NO||创建时间|
|update_user|int(11) unsigned|NO|0|更新人|
|update_time|int(11)|NO||更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标识|
## 友链管理表：pk_link
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(10) unsigned|NO||唯一性标识|
|name|varchar(50)|YES||友链名称|
|type|tinyint(1) unsigned|NO|1|类型：1友情链接 2合作伙伴|
|url|varchar(150)|YES||友链地址|
|item_id|int(10) unsigned|NO|0|站点ID|
|cate_id|int(10) unsigned|NO|0|栏目ID|
|platform|tinyint(1) unsigned|NO|1|平台：1PC站 2WAP站 3微信小程序 4APP应用|
|form|tinyint(1) unsigned|NO|1|友链形式：1文字链接 2图片链接|
|image|varchar(50)|YES||友链图片|
|status|tinyint(1) unsigned|NO|1|状态：1在用 2停用|
|sort|smallint(5) unsigned|NO|125|显示顺序|
|note|varchar(255)|YES||备注|
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|添加时间|
|update_user|int(11) unsigned|NO|0|更新人|
|update_time|int(11) unsigned|NO|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标识(1正常 0删除)|
## 婚姻状态表：pk_marital_status
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||id|
|name|varchar(50)|NO||名称|
|status|tinyint(1)|NO|1|状态：1正常 2禁用|
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|添加时间|
|update_user|int(11) unsigned|NO|0|更新人|
|update_time|int(11) unsigned|NO|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标识(1正常 0删除)|
## 用户表：pk_member
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11)|NO||id|
|guid|varchar(50)|YES||用户唯一标识|
|username|varchar(30)|YES||用户名|
|password|char(32)|YES||密码|
|salt|varchar(20)|YES||加密盐|
|mobile|varchar(11)|YES|0|手机号|
|idcard|varchar(20)|YES||身份证号码|
|name|varchar(50)|YES||真实姓名|
|nickname|varchar(50)|YES||用户昵称|
|gender|tinyint(1)|YES|3|性别（1男 2女 3未知）|
|avatar|varchar(180)|YES||用户头像|
|birthday|int(11) unsigned|YES|0|出生日期|
|address|varchar(255)|YES||详细地址|
|intro|text|YES||个人简介|
|signature|varchar(30)|YES||个性签名|
|device|tinyint(1)|NO|1|设备类型：1APP 2微信 3其他|
|source|tinyint(1)|NO|1|来源：1、前端注册；2、后台添加；|
|status|tinyint(1)|NO|1|状态：1正常 2禁用|
|app_version|varchar(30)|YES||客户端版本号|
|userLevel|tinyint(1)|NO|1|实名认证：1未认证 2已认证|
|nation_id|tinyint(3) unsigned|NO|1|民族表id|
|political_id|tinyint(3) unsigned|NO|1|政治面貌id|
|political_type_id|tinyint(3) unsigned|NO|1|党员类型|
|marital_status_id|tinyint(3) unsigned|NO|1|婚姻状态表id|
|education_id|tinyint(3) unsigned|NO|1|学历表id|
|permanent_address|varchar(255)|NO||户籍地|
|current_address|varchar(255)|NO||现居住地|
|stature|tinyint(3) unsigned|NO|0|身高|
|email|varchar(50)|NO||邮箱|
|is_shangfang|tinyint(3) unsigned|NO|1|是否为上访人员 1否 2是|
|focus|tinyint(3) unsigned|NO|1|重点人群id|
|disability_id|tinyint(3) unsigned|NO|1|残疾表id|
|gzh_openid|varchar(50)|NO||公众号openid|
|xcx_openid|varchar(50)|NO||小程序openid|
|union_id|varchar(50)|NO||微信开放平台id|
|qywx_user_id|varchar(50)|NO||企业微信用户id|
|code|varchar(10)|YES||我的推广码|
|login_ip|varchar(30)|YES||最近登录IP|
|login_time|int(11) unsigned|NO|0|登录时间|
|login_region|varchar(20)|YES||上次登录地点|
|login_count|int(10) unsigned|NO|0|登录总次数|
|create_user|int(11)|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|创建时间|
|update_user|int(11)|NO|0|修改人|
|update_time|int(11) unsigned|NO|0|更新时间|
|mark|tinyint(1)|NO|1|有效标识：1正常 0删除|
## 会员级别表：pk_member_level
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||主键ID|
|name|varchar(30)|NO||级别名称|
|sort|smallint(5) unsigned|NO|125|显示顺序|
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|创建时间|
|update_user|int(11) unsigned|NO|0|更新人|
|update_time|int(11) unsigned|NO|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标识|
## 系统菜单表：pk_menu
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11)|NO||主键ID|
|pid|int(11)|NO|0|父级ID|
|title|varchar(30)|NO||菜单标题|
|icon|varchar(50)|YES||图标|
|path|varchar(150)|YES||菜单路径|
|component|varchar(150)|YES||菜单组件|
|target|varchar(30)|YES||打开方式：0组件 1内链 2外链|
|permission|varchar(150)|YES||权限标识|
|type|tinyint(1)|NO|0|类型：0菜单 1节点|
|status|tinyint(1)|YES|1|状态：1正常 2禁用|
|hide|tinyint(1) unsigned|YES|0|是否可见：0显示 1隐藏|
|note|varchar(255)|YES||备注|
|sort|smallint(5)|YES|125|显示顺序|
|create_user|int(11)|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|创建时间|
|update_user|int(11)|YES|0|更新人|
|update_time|int(11) unsigned|NO|0|更新时间|
|mark|tinyint(1)|NO|1|有效标识|
## 民族表：pk_nation
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||id|
|name|varchar(50)|NO||名称|
|status|tinyint(1)|NO|1|状态：1正常 2禁用|
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|添加时间|
|update_user|int(11) unsigned|NO|0|更新人|
|update_time|int(11) unsigned|NO|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标识(1正常 0删除)|
## 通知公告表：pk_notice
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||通知ID|
|title|varchar(150)|NO||通知标题|
|content|text|YES||通知内容|
|source|tinyint(1)|NO||来源：1内部通知 2外部新闻|
|is_top|tinyint(1) unsigned|NO|2|是否置顶：1是 2否|
|browse|int(10) unsigned|NO|0|阅读量|
|status|tinyint(1) unsigned|NO|2|状态：1已发布 2待发布|
|create_user|int(10) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|添加时间|
|update_user|int(10) unsigned|NO|0|更新人|
|update_time|int(11) unsigned|NO|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标识|
## 政治面貌：pk_political
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||id|
|name|varchar(50)|NO||名称|
|status|tinyint(1)|NO|1|状态：1正常 2禁用|
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|添加时间|
|update_user|int(11) unsigned|NO|0|更新人|
|update_time|int(11) unsigned|NO|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标识(1正常 0删除)|
## 党员类型：pk_political_type
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||id|
|name|varchar(50)|NO||名称|
|status|tinyint(1)|NO|1|状态：1正常 2禁用|
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|添加时间|
|update_user|int(11) unsigned|NO|0|更新人|
|update_time|int(11) unsigned|NO|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标识(1正常 0删除)|
## 岗位表：pk_position
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||主键ID|
|name|varchar(30)|NO||岗位名称|
|status|tinyint(1) unsigned|NO|1|状态：1正常 2停用|
|sort|smallint(5) unsigned|NO|125|显示顺序|
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|添加时间|
|update_user|int(11) unsigned|NO|0|更新人|
|update_time|int(11) unsigned|NO||更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标识|
## 系统角色表：pk_role
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(10) unsigned|NO||主键ID|
|name|varchar(30)|NO||角色名称|
|code|varchar(100)|NO||角色标签|
|status|tinyint(1) unsigned|NO|1|状态：1正常 2禁用|
|note|varchar(255)|YES||备注|
|sort|smallint(5) unsigned|NO|125|排序|
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|添加时间|
|update_user|int(11) unsigned|NO|0|更新人|
|update_time|int(11) unsigned|NO|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标识(1正常 0删除)|
## 角色菜单关联表：pk_role_menu
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|role_id|smallint(5) unsigned|NO|0|角色ID|
|menu_id|smallint(5) unsigned|NO|0|菜单ID|
## test：pk_table_test
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(10) unsigned|NO|||
|create_user|int(10) unsigned|NO|0|添加人|
|create_time|int(10) unsigned|NO|0|创建时间|
|update_user|int(10) unsigned|NO|0|更新人|
|update_time|int(10) unsigned|NO|0|更新时间|
|mark|tinyint(3) unsigned|NO|1|有效标识|
|name|varchar(200)|NO||名称|
## 第三方登录表：pk_third
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||id|
|uid|int(11)|YES||member_id|
|platform|varchar(30)|NO||第三方应用|
|mobile|int(12) unsigned|NO|0|手机号码|
|uuid|varchar(32)|NO||唯一ID|
|openid|varchar(255)|YES||openid|
|openname|varchar(50)|YES||第三方会员昵称|
|access_token|varchar(255)|NO||AccessToken|
|refresh_token|varchar(255)|NO|RefreshToken||
|expires_in|int(10) unsigned|NO|0|有效期|
|create_time|int(10) unsigned|YES||创建时间|
|update_time|int(10) unsigned|YES||更新时间|
|login_time|int(10) unsigned|YES||登录时间|
|expire_time|int(10) unsigned|YES||过期时间|
## 后台用户管理表：pk_user
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(10) unsigned|NO||主键ID|
|guid|varchar(50)|NO||唯一id|
|code|varchar(30)|NO||编号|
|realname|varchar(150)|YES||真实姓名|
|nickname|varchar(150)|YES||昵称|
|gender|tinyint(1) unsigned|NO|3|性别:1男 2女 3保密|
|avatar|varchar(150)|YES||头像|
|mobile|char(11)|YES||手机号码|
|email|varchar(30)|YES||邮箱地址|
|username|varchar(50)|NO||登录用户名|
|password|varchar(150)|YES||登录密码|
|salt|varchar(30)|YES||盐加密|
|status|tinyint(1) unsigned|NO|1|状态：1正常 2禁用|
|sort|smallint(5) unsigned|NO|125|显示顺序|
|province_code_a|int(30) unsigned|NO|0|省份编码|
|city_code_a|int(30) unsigned|NO|0|市区编码|
|district_code_a|int(30) unsigned|NO|0|区县编码|
|town_code_a|int(30) unsigned|NO|0|乡镇编码|
|street_code_a|int(30) unsigned|NO|0|社区编码|
|login_num|smallint(6) unsigned|NO|0|登录次数|
|login_ip|varchar(20)|YES||最近登录IP|
|login_time|int(11) unsigned|NO|0|最近登录时间|
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|创建时间|
|update_user|int(11) unsigned|NO|0|更新人|
|update_time|int(11) unsigned|NO|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标识(1正常 0删除)|
## 人员角色表：pk_user_role
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|user_id|int(10) unsigned|NO|0|人员ID|
|role_id|int(10) unsigned|NO|0|角色ID|
## 网格：pk_wangge
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(10) unsigned|NO||主键id|
|wgbm|bigint(20) unsigned|NO|0|网格编码|
|pid|bigint(20) unsigned|NO|0|社区 网格 code|
|name|varchar(255)|NO||网格名称|
|status|tinyint(1) unsigned|NO|1|状态: 0=关闭 1=开启|
|city_code_a|int(30) unsigned|NO|0|市区编码|
|district_code_a|int(30) unsigned|NO|0|区县编码|
|town_code_a|int(30) unsigned|NO|0|乡镇编码|
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|添加时间|
|update_user|int(11) unsigned|NO|0|更新人|
|update_time|int(11) unsigned|NO|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标识(1正常 0删除)|
##网格编码 ：pk_wangge_code
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(10) unsigned|NO|||
|name|varchar(100)|NO||网格名称|
|code|varchar(50) |NO||网格编码|
|parentcode|varchar(50) |NO||父级编码|
|status|tinyint(3) |NO||状态|
## 加入网格：pk_wangge_user
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||id|
|guid|varchar(50)|NO||唯一id|
|mb_guid|varchar(50)|NO||用户唯一id|
|qbm|varchar(20)|NO||区编码|
|jbm|varchar(20)|NO||街编码|
|sqbm|varchar(20)|NO||社区编码|
|wgbm|varchar(20)|NO||网格编码|
|is_wgy|tinyint(3)|NO|0|是否是网格员|
|is_sqsj|tinyint(3)|NO|0|是否是社区书记|
|is_fwtd|tinyint(3)|NO|0|是否是服务团队|
|is_sqls|tinyint(3)|NO|0|是否是社区律师|
|is_sqtjy|tinyint(3)|NO|0|是否是社区调解员|
|user_status|tinyint(3)|NO|1|用户状态|
|user_attribute|tinyint(3)|NO|0|用户身份 业主 租户其它|
|is_ban_talk|tinyint(3)|NO|0|是否被禁言|
|is_private_chat|tinyint(3)|NO|0|是否允许私聊|
|message_free|tinyint(3)|NO|0|是否消息面打扰|
|beizhu|varchar(200)|NO||居民备注情况|
|is_check|tinyint(3)|NO|0|是否核验|
|check_user|int(11)|NO|0|核验人|
|check_time|int(11)|NO|0|核验时间|
|check_ip|varchar(20)|NO||核验ip地址|
|create_user|int(11) unsigned|NO|0|添加人|
|create_time|int(11) unsigned|NO|0|添加时间|
|update_user|int(11) unsigned|NO|0|更新人|
|update_time|int(11) unsigned|NO|0|更新时间|
|mark|tinyint(1) unsigned|NO|1|有效标识(1正常 0删除)|
## 网格员表：pk_wanggeyuan_user
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id|int(11) unsigned|NO||id|
|mb_guid|varchar(50)|NO||用户表guid|
|qbm|varchar(20)|NO||区编码|
|jbm|varchar(20)|NO||街编码|
|sqbm|varchar(20)|NO||社区编码|
|wgbm|varchar(20)|NO||网格编码|
|mobile|int(11) unsigned|NO|0|电话号码|
|gridname|varchar(20)|NO||网格名称|
|territory|varchar(20)|NO||负责区域|
|is_tongzhi|tinyint(3)|NO|0|是否允许发送通知|
|status|tinyint(1)|NO|1|状态：1正常 2禁用|
|carete_time|int(11)|NO|0|创建时间|
|create_user|int(11)|NO|0|添加人|
|update_time|int(11)|NO|0|更新时间|
|update_user|int(11)|NO|0|更新人|
|mark|tinyint(1)|YES|1|有效标识(1正常 0删除)|
## 社区公告表：pk_tiezi
|字段|类型|空|默认|注释|
|:---:|:---:|:---:|:---:|:---:|
|id| int(10)  unsigned|NO||帖子id|
|openid| varchar(64)|NO||用户openid|
|title| varchar(100)  |NO||  标题|
|image| text|NO||图片路径|
|content| longtext |NO||内容|
|status| tinyint(4) |NO|1|状态，0--未审核，1--已审核|
|b_id| int(11)|NO|| 
|ping| int(11)|NO|0| 评论数|
|zan| int(11) |NO|0| 点赞数|
|add_time| varchar(30)|NO||添加时间|
|code| varchar(40) |NO||编码|
|zt| tinyint(3) |NO|0|状态，0--不推送，1--推送|
|is_tan| tinyint(1)|NO|1|弹窗|
|is_top| int(1)|NO|0|  |
|top_time| varchar(255)|NO|||
|label| int(11)  |NO||标签|
|type| int(11) |NO|0| |
|tongzhi| int(1) |NO|0|1为普通通知2位重要通知|
|age| int(1) |NO|0|1为18-30岁2为30-50，3位50岁以上|
