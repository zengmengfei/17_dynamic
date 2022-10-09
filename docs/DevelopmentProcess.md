## 开发流程规范（本地环境-代码仓库-测试环境-生产环境）
### 一仓库
#### http://58.49.165.184:7277/users/sign_in
#### http://111.229.164.29:8099/users/sign_in
### 二、确定项目开发负责人
### 三、联系陈鹏 创建代码仓库 授权访问成员
### 四、陈鹏给每个项目，开发负责人测试环境代码同步权限、测试环境数据库权限，开发负责人发给项目开发成员，成员代码只能同步到测试环境和修改测试环境数据库数据 用于测试（公司测试环境）
### 五、陈鹏给每个项目，开发负责人生产环境权限和生产环境数据库权限 ，生产环境服务器权限只限项目开发负责人个人使用（VPN堡垒机模式等方式）
### 五、找陈鹏创建域名 测试域名解析到测试环境、正式域名解析到生产环境
#### 1.后台vue项目 生成 4个域名
##### XXX.tenqent.com  后台正式访问地址
##### XXXdev.tenqent.com  测试后台访问地址
##### XXXapi.tenqent.com  后台正式接口地址
##### XXXapidev.tenqent.com 后台测试接口地址
#### 2.非后台vue项目  生2个域名
##### XXX.tenqent.com  正式访问地址
##### XXXdev.tenqent.com  测试访问地址
### 六、项目有自有服务器联系陈鹏配置服务器运行环境
### 七、代码仓库会每分钟同步测试环境最新代码，冲突问题自行解决或找陈鹏协助解决，数据
### 八、项目开发负责人审核代码仓库和数据库表设计，开发成员和开发负责人沟通修改点和数据库变更 ，开发负责人从测试服同步代码和数据库修改到正式服
### 九、框架选择、软件运行环境版本、操作系统、禁用函数、优化、并发、端口、代理、集群、读写分离、Redis 等联系陈鹏
### 十、每日下班提交代码到代码仓库（记录工作量和留痕）