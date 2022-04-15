## 0. 系统设置

### 1). 快速访问中文件夹清理

快速访问中文件夹与注册表映射，可用于删除系统资源管理器中无用的文件夹

```
\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace
```

| Key Name                               | Folder Name |
| -------------------------------------- | ----------- |
| {088e3905-0323-4b02-9826-5d99428e115f} | Download    |
| {0DB7E03F-FC29-4DC6-9020-FF41B59E513A} | 3D  Objects |
| {24ad3ad4-a569-4530-98e1-ab02f9417aa8} | Pictures    |
| {374DE290-123F-4565-9164-39C4925E467B} |             |
| {3ADD1653-EB32-4cb0-BBD7-DFA0ABB5ACCA} |             |
| {3dfdf296-dbec-4fb4-81d1-6a3438bcf4de} | Music       |
| {A0953C92-50DC-43bf-BE83-3742FED03C9C} |             |
| {A8CDFF1C-4878-43be-B5FD-F8091C1C60D0} |             |
| {B4BFCC3A-DB2C-424C-B029-7FE99A87C641} | Desktop     |
| {d3162b92-9365-467a-956b-92703aca08af} | Documents   |
| {f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a} | Videos      |

### 2). 右键菜单注册表清理项

**迅雷看看**

```
reg delete HKEY_CLASSES_ROOT\*\ShellEx_Bak\shellex\ContextMenuHandlers\AXmpLite /va /f
```

**百度云**

```
reg delete HKEY_CLASSES_ROOT\*\ShellEx_Bak\shellex\ContextMenuHandlers\YunShellExt /va /f
reg delete HKEY_CLASSES_ROOT\Directory\shellex\ContextMenuHandlers\YunShellExt /va /f
```

## 1. 开发工具

### 1.1 Git

1）置全局参数，用户名和邮箱

```bash
git config --global user.name 'Eric SHU'
git config --global user.email 'shuli0502@gmail.com'
```

2）生成SSH秘钥

```bash
ssh-keygen -t rsa -C 'shuli0502@gmail.com'
```

3）生产的秘钥位于C:\Users\shuli\\.ssh

4）将id_rsa.pub中的公钥添加至GitHub 和 Gitee

5）连接测试

```bash
ssh -T git@github.com
ssh -T git@gitee.com
```

### 1.2 MySQL

1）下载zip并解压

https://dev.mysql.com/downloads/mysql/

2）创建my.ini配置文件至根目录

```properties
[mysqld]
# 设置3306端口
port=3306
# 设置mysql的安装目录
basedir=D:\Tools\MySQL
# 设置mysql数据库的数据的存放目录
datadir=D:\Tools\MySQL\data
# 允许最大连接数
max_connections=200
# 允许连接失败的次数。
max_connect_errors=10
# 服务端使用的字符集默认为UTF8
character-set-server=utf8mb4
# 创建新表时将使用的默认存储引擎
default-storage-engine=INNODB
# 默认使用“mysql_native_password”插件认证
default_authentication_plugin=mysql_native_password
# 设置默认时区
default-time-zone='+8:00'
[mysql]
# 设置mysql客户端默认字符集
default-character-set=utf8mb4
[client]
# 设置mysql客户端连接服务端时默认使用的端口
port=3306
default-character-set=utf8mb4
```

3）初始化服务

```
mysqld --initialize --console
```

```
D:\Tools\MySQL\bin>mysqld --initialize --console
2020-10-05T10:12:40.526894Z 0 [System] [MY-013169] [Server] D:\Tools\MySQL\bin\mysqld.exe (mysqld 8.0.21) initializing of server in progress as process 13328
2020-10-05T10:12:40.542290Z 1 [System] [MY-013576] [InnoDB] InnoDB initialization has started.
2020-10-05T10:12:41.128464Z 1 [System] [MY-013577] [InnoDB] InnoDB initialization has ended.
2020-10-05T10:12:42.445408Z 6 [Note] [MY-010454] [Server] A temporary password is generated for root@localhost: bbcykrHeu1?:
```

其中root@localhost:后面的“*bbcykrHeu1?:*”就是初始密码；

4）安装服务

```
mysqld --install [服务名]
```

后面的服务名可以不写，默认的名字为 mysql。

5）启动服务

```
net start mysql
```

6）登陆并修改密码

```
mysql -u root -p
```

这时候会提示输入密码，记住了上面第3步安装时的密码，填入即可登录成功，进入MySQL命令模式

```
-- SET PASSWORD=PASSWORD('[new password]');	
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'eric';
```

7）其他配置

```
// 创建用户
CREATE USER 'eric'@'%' IDENTIFIED WITH mysql_native_password BY '1234';

// 授权所有权限
GRANT ALL PRIVILEGES ON *.* TO 'eric'@'%';
// 授权基本的查询修改权限，按需求设置
GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP,ALTER ON *.* TO 'eric'@'%';

// 查看用户权限
show grants for 'eric'@'%';

// 查看用户信息
select user, host, plugin, authentication_string from user;
```

8）防火墙及端口配置

```
// 打开3306端口
firewall-cmd --add-port=3306/tcp --permanent
	
// 重新载入防火墙配置
firewall-cmd --reload
```

### 1.3 Ubuntu WSL

0. Errors and solutions

​	https://docs.microsoft.com/zh-cn/windows/wsl/install-win10

**0x8007019e**

​	Control Panel -> Programs -> Turn Windows features on or off -> Windows subsystem for Linux

**0x800701bc**

​	造成该问题的原因是WSL版本由原来的WSL1升级到WSL2后，内核没有升级，前往微软WSL官网下载安装适用于 x64 计算机的最新 WSL2 Linux 内核更新包即可。

​	下载链接：https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi

**0x80370102**

```
bcdedit /set hypervisorlaunchtype auto
```

1. 设置root用户密码

   sudo passwd

2. ssh连接Win10子系统Linux配置

   2.1 查看是否开启SSH服务

   ```
   ps -ef | grep ssh
   ```

   2.2 如不存在ssh进程，安装SSH服务

   ```
   apt-getremoveopenssh-server 
   apt-getinstall openssh-server
   ```

   2.3 切换至root用户，修改配置端口为22，开启允许密码登录

   ```
   vim /etc/ssh/sshd_config 
   Port 22 
   PasswordAuthentication yes
   ```

   2.4 重启ssh服务

   ```
   service ssh --full-restart
   ```

3. 更改默认镜像源

   [ubuntu | 镜像站使用帮助 | 清华大学开源软件镜像站 | Tsinghua Open Source Mirror](https://mirrors.tuna.tsinghua.edu.cn/help/ubuntu/)

### 1.4 Nodejs 

1. [下载 | Node.js 中文网 (nodejs.cn)](http://nodejs.cn/download/)

2. 运行安装文件安装node

3. 检查node 及 npm版本

   ```
   node -v
   nopm -v
   ```

4. 在node安装路径下创建 node_cache 及 node_global 文件夹，并执行以下命令

   ```
   npm config set prefix "C:\Softwares\Nodejs\node_global"
   npm config set cache "C:\Softwares\Nodejs\node_cache"
   ```

   输入下面命令查看设置是否生效

   ```
   npm list -global
   ```

   ```
   PS C:\Users\xxx> npm list -global
   C:\Softwares\Nodejs\node_global
   `-- (empty)
   
   PS C:\Users\xxx>
   ```

5. 设置npm淘宝镜像源以提升速度

   ```
   npm config set registry=http://registry.npm.taobao.org
   ```

   检查镜像源是否设置成功

   ```
   npm config get registry
   ```

   测试镜像源能否获得Vue信息

   ```
   npm info vue
   ```

   正常输出如下

   ```bash
   PS C:\Users\xxx> npm info vue
   
   vue@3.2.31 | MIT | deps: 5 | versions: 370
   The progressive JavaScript framework for building modern web UI.
   https://github.com/vuejs/core/tree/main/packages/vue#readme
   
   dist
   .tarball: https://registry.npmmirror.com/vue/-/vue-3.2.31.tgz
   .shasum: e0c49924335e9f188352816788a4cca10f817ce6
   .integrity: sha512-odT3W2tcffTiQCy57nOT93INw1auq5lYLLYtWpPYQQYQOOdHiqFct9Xhna6GJ+pJQaF67yZABraH47oywkJgFw==
   .unpackedSize: 2.5 MB
   
   dependencies:
   @vue/compiler-dom: 3.2.31    @vue/runtime-dom: 3.2.31     @vue/shared: 3.2.31
   @vue/compiler-sfc: 3.2.31    @vue/server-renderer: 3.2.31
   
   maintainers:
   - posva <posva13@gmail.com>
   - yyx990803 <yyx990803@gmail.com>
   
   dist-tags:
   csp: 1.0.28-csp  latest: 3.2.31   legacy: 2.6.14   next: 3.2.31
   
   published a month ago by yyx990803 <yyx990803@gmail.com>
   npm notice
   npm notice New minor version of npm available! 8.5.0 -> 8.6.0
   npm notice Changelog: https://github.com/npm/cli/releases/tag/v8.6.0
   npm notice Run npm install -g npm@8.6.0 to update!
   npm notice
   PS C:\Users\xxx>
   ```

6. npm全局模块安装

   npm安装 web框架模块 **express**

   ```
   npm install express -g
   ```

   npm安装vue-router

   ```
   npm install vue-router -g
   ```

   npm安装vue脚手架

   ```
   npm install vue-cli -g
   ```

   查看是否安装成功

   ```bash
   PS C:\Users\xxx> npm list -g
   C:\Softwares\Nodejs\node_global
   +-- express@4.17.3
   +-- vue-cli@2.9.6
   `-- vue-router@4.0.14
   
   PS C:\Users\xxx>
   ```

7. 环境变量配置

   增加NODE_PATH ：C:\Softwares\Nodejs\node_global\node_modules

   修改Path增加 ：C:\Softwares\Nodejs\node_global

### 1.5 Kafka

1. 下载地址：https://kafka.apache.org/downloads

2. 启动zookeeper

   ```bash
   .\zookeeper-server-start.bat ..\..\config\zookeeper.properties
   ```

   默认端口：2181

3. 启动kafka

   ```
   .\kafka-server-start.bat ..\..\config\server.properties
   ```

   默认端口：9092

4. 创建topic

   ```
   .\kafka-topics.bat --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic eric
   ```

5. 查看topic

   ```
   .\kafka-topics.bat --zookeeper 127.0.0.1:2181 --list
   ```

6. 删除topic

   ```
   .\kafka-topics.bat --delete --zookeeper localhost:2181 --topic eric
   ```

7. 生产者功能测试

   ```
   .\kafka-console-producer.bat --broker-list localhost:9092 --topic eric
   ```

8. 消费者功能测试

   ```
   kafka-console-consumer.bat --bootstrap-server localhost:9092 --topic eric --from-beginning
   ```


## 2. Docker

### 2.1 Docker安装

Docker 分为 CE 和 EE 两大版本。CE 即社区版（免费，支持周期 7 个月），EE 即企业版，强调安全，付费使用，支持周期 24 个月。

Docker CE 分为 `stable` `test` 和 `nightly` 三个更新频道。官方网站上有各种环境下的 [安装指南](https://docs.docker.com/install/)。

#### 1. CentOS安装Docker

Docker CE 支持 64 位版本 CentOS 7，并且要求内核版本不低于 3.10， CentOS 7 满足最低内核的要求，所以我们在CentOS 7安装Docker。

##### 1.1 Docker卸载（可选）

如果之前安装过旧版本的Docker，可以使用下面命令卸载：

```shell
yum remove docker \
    docker-client \
    docker-client-latest \
    docker-common \
    docker-latest \
    docker-latest-logrotate \
    docker-logrotate \
    docker-selinux \
    docker-engine-selinux \
    docker-engine \
    docker-ce
```

##### 1.2 安装Docker

首先需要大家虚拟机联网，安装yum工具

```sh
yum install -y yum-utils \
           device-mapper-persistent-data \
           lvm2 --skip-broken
```

然后更新本地镜像源：

```shell
# 设置docker镜像源
yum-config-manager \
    --add-repo \
    https://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
    
sed -i 's/download.docker.com/mirrors.aliyun.com\/docker-ce/g' /etc/yum.repos.d/docker-ce.repo

yum makecache fast
```

然后输入命令：

```shell
yum install -y docker-ce
```

docker-ce为社区免费版本。稍等片刻，docker即可安装成功。



##### 1.3 启动docker

Docker应用需要用到各种端口，逐一去修改防火墙设置。非常麻烦，因此建议大家直接关闭防火墙！

启动docker前，一定要关闭防火墙后！！

启动docker前，一定要关闭防火墙后！！

启动docker前，一定要关闭防火墙后！！

```sh
# 关闭
systemctl stop firewalld
# 禁止开机启动防火墙
systemctl disable firewalld
```

通过命令启动docker：

```sh
systemctl start docker  	# 启动docker服务
systemctl stop docker  		# 停止docker服务
systemctl restart docker	# 重启docker服务
```

然后输入命令，可以查看docker版本：

```
docker -v
```

##### 1.4 配置镜像加速

docker官方镜像仓库网速较差，我们需要设置国内镜像服务：

参考阿里云的镜像加速文档：https://cr.console.aliyun.com/cn-hangzhou/instances/mirrors



#### 2. CentOS安装DockerCompose

##### 2.1 下载

Linux下需要通过命令下载：

```sh
# 安装
curl -L https://github.com/docker/compose/releases/download/1.23.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
```

上传到`/usr/local/bin/`目录也可以。



##### 2.2 修改文件权限

修改文件权限：

```sh
# 修改权限
chmod +x /usr/local/bin/docker-compose
```

##### 2.3 Base自动补全命令：

```sh
# 补全命令
curl -L https://raw.githubusercontent.com/docker/compose/1.29.1/contrib/completion/bash/docker-compose > /etc/bash_completion.d/docker-compose
```

如果这里出现错误，需要修改自己的hosts文件：

```sh
echo "199.232.68.133 raw.githubusercontent.com" >> /etc/hosts
```

#### 3.Docker镜像仓库

搭建镜像仓库可以基于Docker官方提供的DockerRegistry来实现。

官网地址：https://hub.docker.com/_/registry

##### 3.1 简化版镜像仓库

Docker官方的Docker Registry是一个基础版本的Docker镜像仓库，具备仓库管理的完整功能，但是没有图形化界面。

搭建方式比较简单，命令如下：

```sh
docker run -d \
    --restart=always \
    --name registry	\
    -p 5000:5000 \
    -v registry-data:/var/lib/registry \
    registry
```

命令中挂载了一个数据卷registry-data到容器内的/var/lib/registry 目录，这是私有镜像库存放数据的目录。

访问http://YourIp:5000/v2/_catalog 可以查看当前私有镜像服务中包含的镜像



##### 3.2 带有图形化界面版本

使用DockerCompose部署带有图象界面的DockerRegistry，命令如下：

```yaml
version: '3.0'
services:
  registry:
    image: registry
    volumes:
      - ./registry-data:/var/lib/registry
  ui:
    image: joxit/docker-registry-ui:static
    ports:
      - 8080:80
    environment:
      - REGISTRY_TITLE=传智教育私有仓库
      - REGISTRY_URL=http://registry:5000
    depends_on:
      - registry
```

##### 3.3 配置Docker信任地址

我们的私服采用的是http协议，默认不被Docker信任，所以需要做一个配置：

```sh
# 打开要修改的文件
vi /etc/docker/daemon.json
# 添加内容：
"insecure-registries":["http://192.168.150.101:8080"]
# 重加载
systemctl daemon-reload
# 重启docker
systemctl restart docker
```

### 2.2 镜像及容器

#### 1 MySQL

##### 1.1 拉取MySQL镜像

```sh
docker pull mysql
```

```sh
[root@aliyun-ecs ~]# docker images
REPOSITORY   TAG       IMAGE ID       CREATED        SIZE
nginx        latest    605c77e624dd   3 months ago   141MB
redis        latest    7614ae9453d1   3 months ago   113MB
mysql        latest    3218b38490ce   3 months ago   516MB
[root@aliyun-ecs ~]#
```

##### 1.2 创建宿主机数据卷目录

```sh
mkdir -p /tmp/mysql/data
mkdir -p /tmp/mysql/conf
```

##### 1.3 准备MySQL配置文件my.cnf

配置定义文件为容器内文件及路径，与宿主机一致并不冲突；

```
[mysql]
# 设置mysql客户端默认字符集
default-character-set=utf8mb4
socket=/var/lib/mysql/mysql.sock
[mysqld]
skip-name-resolve
#设置3306端⼝
port = 3306
socket=/var/lib/mysql/mysql.sock
# 设置mysql的安装⽬录
basedir=/usr/local/mysql
# 设置mysql数据库的数据的存放⽬录
datadir=/usr/local/mysql/data
# 允许最⼤连接数
max_connections=1000
# 允许连接失败的次数。这是为了防止有人从该主机试图攻击数据库系统
max_connect_errors=20
# 服务端使⽤的字符集默认为8⽐特编码的latin1字符集
character-set-server=utf8mb4
# 创建新表时将使⽤的默认存储引擎
default-storage-engine=INNODB
# 默认使用"mysql_native_password"插件认证
default_authentication_plugin=mysql_native_password
# 设置默认时区
default-time-zone='+8:00'
# 设置大小写是否敏感
# lower_case_table_names=0 表名存储为给定的大小和比较是区分大小写的
# lower_case_table_names=1 表名存储在磁盘是小写的，但是比较的时候是不区分大小写
# lower_case_table_names=2 表名存储为给定的大小写但是比较的时候是小写的
lower_case_table_names=1
# mysql服务器端和客户端在一次传送数据包的过程当中最大允许的数据包大小
max_allowed_packet=16M
[client]
# 设置mysql客户端连接服务端时默认使用的端口
port=3306
default-character-set=utf8mb4
```

##### 1.4 生成MySQL容器

```
docker run \
	--name mysql \
	-e MYSQL_ROOT_PASSWORD=eric \
	-p 9999:3306 \
	-v /tmp/mysql/conf/emy.cnf:/etc/mysql/conf.d/emy.cnf \
	-v /tmp/mysql/data:/usr/local/mysql/data \
	-d mysql
```

```sh
[root@aliyun-ecs ~]# docker ps -a
CONTAINER ID   IMAGE     COMMAND                  CREATED             STATUS             PORTS                                                  NAMES
bd2c43d4abd7   mysql     "docker-entrypoint.s…"   27 minutes ago      Up 27 minutes      33060/tcp, 0.0.0.0:9999->3306/tcp, :::9999->3306/tcp   mysql
68aa5b14dfae   nginx     "/docker-entrypoint.…"   About an hour ago   Up About an hour   0.0.0.0:888->80/tcp, :::888->80/tcp                    myNginx
31e8a41bd4ab   redis     "docker-entrypoint.s…"   22 hours ago        Up 2 hours         0.0.0.0:8888->6379/tcp, :::8888->6379/tcp              myRedis
[root@aliyun-ecs ~]
```

##### 1.5 数据库连接测试

