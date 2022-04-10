### JetBrains IDEA

#### 0. Edit Custom Properties

**Help -> Edit Custom Properties**

默认存储位置为 [C:\Users\\{username}\AppData\Local\JetBrains\IntelliJIdea20xx.x]

被改动的idea.properties文件位于 [C:\Users\\\{username}\AppData\Roaming\JetBrains\IntelliJIdea20xx.x]

此项配置用于指定系统配置和插件存储位置，重启后生效

<img src="img\微信截图_20220402192305.png" alt="微信截图_20220402192305"  />

附Jetbrains其他产品配置文件示例

```properties
# custom IntelliJ IDEA properties
idea.config.path=D:/Documents/JetBrains/IntelliJIdea/config
idea.plugins.path=${idea.config.path}/plugins
idea.system.path=D:/Documents/JetBrains/IntelliJIdea/system
idea.log.path=${idea.system.path}/log

# custom PyCharm properties
idea.config.path=D:/Documents/JetBrains/PyCharm/config
idea.plugins.path=${idea.config.path}/plugins
idea.system.path=D:/Documents/JetBrains/PyCharm/system
idea.log.path=${idea.system.path}/log

# custom WebStorm properties
idea.config.path=D:/Documents/JetBrains/WebStorm/config
idea.plugins.path=${idea.config.path}/plugins
idea.system.path=D:/Documents/JetBrains/WebStorm/system
idea.log.path=${idea.system.path}/log

# custom DataGrip properties
idea.config.path=D:/Documents/JetBrains/DataGrip/config
idea.plugins.path=${idea.config.path}/plugins
idea.system.path=D:/Documents/JetBrains/DataGrip/system
idea.log.path=${idea.system.path}/log

# custom IntelliJ IDEA properties
idea.config.path=D:/Documents/JetBrains/Community/config
idea.plugins.path=${idea.config.path}/plugins
idea.system.path=D:/Documents/JetBrains/Community/system
idea.log.path=${idea.system.path}/log
```

#### 1. Appearance & Behavior

##### 2.1 常用主题安装

1. ##### Trash Panda Theme


![Trash Panda Theme](img\Trash Panda Theme.jpg)

2. Xcode-Dark Theme
3. Darcula Darker Theme
4. Hiberbee Theme
5. Spacegray Theme
6. Atom One Theme
7. One Dark theme
8. Cyan Light Theme

##### 2.2 新一行展示完整工具栏

![微信截图_20220402212545](img\微信截图_20220402212545.png)

![微信截图_20220402212617](img\微信截图_20220402212617.png)

##### 2.3 菜单栏字体设置

![微信截图_20220402212105](img\微信截图_20220402212105.png)

##### 2.4 提高滚动条对比度

![微信截图_20220402214053](img\微信截图_20220402214053.png)

##### 2.5 设置固定背景图片

![微信截图_20220402213923](img\微信截图_20220402213923.png)

##### 2.6 设置动态背景图片

![微信截图_20220402220221](img\微信截图_20220402220221.png)

#### 2. Keymap

![微信截图_20220402214726](img\微信截图_20220402214726.png)

#### 3. Editor

##### 3.1 设置鼠标滚轮修改字体大小

![微信截图_20220402213140](img\微信截图_20220402213140.png)

##### 3.2 设置自动导包

![Snipaste_2022-04-03_10-49-49](img\Snipaste_2022-04-03_10-49-49.png)

##### 3.3 显示行号和方法分隔线

![Snipaste_2022-04-03_11-07-37](img\Snipaste_2022-04-03_11-07-37.png)

##### 3.4 代码提示不区分大小写

![Snipaste_2022-04-03_10-52-28](img\Snipaste_2022-04-03_10-52-28.png)

##### 3.5 自定义打开代码时自动折叠的内容

![Snipaste_2022-04-03_10-56-05](img\Snipaste_2022-04-03_10-56-05.png)

##### 3.6 设置页签多行展示及关闭策略

![Snipaste_2022-04-03_11-13-14](img\Snipaste_2022-04-03_11-13-14.png)

![Snipaste_2022-04-03_11-18-45](img\Snipaste_2022-04-03_11-18-45.png)
##### 3.7 编辑区及控制台字体设置

![微信截图_20220402212331](img\微信截图_20220402212331.png)

![Snipaste_2022-04-03_22-27-35](img\Snipaste_2022-04-03_22-27-35.png)

##### 3.8 设置单行注释起始位置

![Snipaste_2022-04-03_11-23-18](img\Snipaste_2022-04-03_11-23-18.png)

![Snipaste_2022-04-03_12-27-37](img\Snipaste_2022-04-03_12-27-37.png)

##### 3.9 设置代码换行及对齐规则

![Snipaste_2022-04-03_11-58-50](img\Snipaste_2022-04-03_11-58-50.png)

##### 3.10 消除IDEA常见警告

注释代码不警告

![Snipaste_2022-04-03_12-17-25](img\Snipaste_2022-04-03_12-17-25.png)

Spring Autowriting

![Snipaste_2022-04-03_12-20-55](img\Snipaste_2022-04-03_12-20-55.png)

##### 3.11 修改类头的文档注释信息

```java
/**
 * Description : 
 * 
 * @author Eric L SHU
 * @date ${YEAR}-${MONTH}-${DAY} ${TIME}
 * @since jdk-11.0.14
 */
```

![Snipaste_2022-04-03_12-09-51](img\Snipaste_2022-04-03_12-09-51.png)

##### 3.12 全局及项目编码格式

![Snipaste_2022-04-03_11-47-05](img\Snipaste_2022-04-03_11-47-05.png)

##### 3.13 设置代码软分行

![Snipaste_2022-04-03_11-28-24](img\Snipaste_2022-04-03_11-28-24.png)

![Snipaste_2022-04-03_11-29-31](img\Snipaste_2022-04-03_11-29-31.png)



##### 3.14 隐藏特定类型文件不显示

![微信截图_20220402223507](img\微信截图_20220402223507.png)

#### 4. Plugins

- Alibaba Cloud Toolkit
- Alibaba Java Coding Guidelines 
- Background Image Plus +
- CodeGlance
- Codota
- ELM
- GitToolBox
- Grep Console
- JUnitGenerator
- RestfulTool
- Key Promoter X
- LeetCode Editor
- Maven Helper
- Translation
- MybatisX
- Rainbow Brackets
- RestfulTool
- Spring Boot Assistant
- Spring Initializr And Assistant
- String Manipulation
- Translation
- Vue.js
- YAML/Ansible support

#### 5. Version Control

##### 5.1 Git 配置

File -> Settings -> Version Control -> Git

![微信截图_20220402211131](img\微信截图_20220402211131.png)

Git 窗口和 Commit窗口显示内容分离

![微信截图_20220402222841](img\微信截图_20220402222841.png)

设置改动文件展示分组模式

![微信截图_20220402223816](img\微信截图_20220402223816.png)

#### 6. Build, Execution, Deployment

##### 6.1 Maven 相关配置

File -> Settings -> Build, Execution, Deployment -> Build Tools -> Maven

![微信截图_20220402211345](img\微信截图_20220402211345.png)

![微信截图_20220402221058](img\微信截图_20220402221058.png)

##### 6.2 设置编译及构建内存

![Snipaste_2022-04-03_11-32-48](img\Snipaste_2022-04-03_11-32-48.png)

##### 6.3 设置自动编译

![Snipaste_2022-04-03_12-11-52](img\Snipaste_2022-04-03_12-11-52.png)

#### 7. Tools

##### 7.1 设置Terminal默认为Git

![Snipaste_2022-04-03_12-44-44](img\Snipaste_2022-04-03_12-44-44.png)

##### 7.2 系统用户名设置

![Snipaste_2022-04-03_12-46-00](img\Snipaste_2022-04-03_12-46-00.png)

#### 8. 设置SDKs

File -> Project Structure -> Platform Settings -> SDKs

![微信截图_20220402194236](img\微信截图_20220402194236.png)

File -> Project Structure -> Project Serrings

![微信截图_20220402194414](img\微信截图_20220402194414.png)

#### 9. 配置导出和导入

![Snipaste_2022-04-03_12-49-27](img\Snipaste_2022-04-03_12-49-27.png)

