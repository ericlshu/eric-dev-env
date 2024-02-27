### JetBrains IDEA

#### 0. Edit Custom Properties

**Help -> Edit Custom Properties**

默认存储位置为 [C:\Users\\{username}\AppData\Local\JetBrains\IntelliJIdea20xx.x]

被改动的idea.properties文件位于 [C:\Users\\\{username}\AppData\Roaming\JetBrains\IntelliJIdea20xx.x]

此项配置用于指定系统配置和插件存储位置，重启后生效

<img src="img\20220402192305.png" alt="20220402192305"/>

附Jetbrains其他产品配置文件示例

```properties
# custom IntelliJ IDEA properties v1
idea.config.path=D:/Documents/JetBrains/Community/config
idea.plugins.path=${idea.config.path}/plugins
idea.system.path=D:/Documents/JetBrains/Community/system
idea.log.path=${idea.system.path}/log

# custom IntelliJ IDEA properties v2
idea.config.path=D:/Documents/JetBrains/IntelliJIdea/config
idea.plugins.path=D:/Documents/JetBrains/IntelliJIdea/plugins
idea.system.path=D:/Documents/JetBrains/IntelliJIdea/system
idea.log.path=D:/Documents/JetBrains/IntelliJIdea/log

# custom IntelliJ IDEA properties v3
idea.base.path=D:/Documents/JetBrains/IntelliJIdea
idea.config.path=${idea.base.path}/config
idea.plugins.path=${idea.base.path}/plugins
idea.system.path=${idea.base.path}/system
idea.log.path=${idea.base.path}/log
```

#### 1. Appearance & Behavior

##### 2.1 常用主题安装

1. ##### Trash Panda Theme

<img src="img\Trash Panda Theme.jpg" alt="Trash Panda Theme.jpg"/>

2. Xcode-Dark Theme
3. Darcula Darker Theme
4. Hiberbee Theme
5. Spacegray Theme
6. Atom One Theme
7. One Dark theme
8. Cyan Light Theme

##### 2.2 新一行展示完整工具栏

<img src="img\20220402212545.png" alt="20220402212545"/>

<img src="img\20220402212617.png" alt="20220402212617"/>

##### 2.3 菜单栏字体设置

<img src="img\20220402212105.png" alt="20220402212105.png"/>

##### 2.4 提高滚动条对比度

<img src="img\20220402214053.png" alt="20220402214053.png"/>

##### 2.5 设置固定背景图片

<img src="img\20220402213923.png" alt="20220402213923.png"/>

##### 2.6 设置动态背景图片

<img src="img\20220402220221.png" alt="20220402220221.png"/>

#### 2. Keymap

<img src="img\20220402214726.png" alt="20220402214726.png"/>

#### 3. Editor

##### 3.1 设置鼠标滚轮修改字体大小

<img src="img\20220402213140.png" alt="20220402213140.png"/>

##### 3.2 设置自动导包

<img src="img\Snipaste_2022-04-03_10-49-49.png" alt="Snipaste_2022-04-03_10-49-49.png"/>

##### 3.3 显示行号和方法分隔线

<img src="img\Snipaste_2022-04-03_11-07-37.png" alt="Snipaste_2022-04-03_11-07-37.png"/>

##### 3.4 代码提示不区分大小写

<img src="img\Snipaste_2022-04-03_10-52-28.png" alt="Snipaste_2022-04-03_10-52-28.png"/>

##### 3.5 自定义打开代码时自动折叠的内容

<img src="img\Snipaste_2022-04-03_10-56-05.png" alt="Snipaste_2022-04-03_10-56-05.png"/>

##### 3.6 设置页签多行展示及关闭策略

<img src="img\Snipaste_2022-04-03_11-13-14.png" alt="Snipaste_2022-04-03_11-13-14.png"/>

<img src="img\Snipaste_2022-04-03_11-18-45.png" alt="Snipaste_2022-04-03_11-18-45.png"/>

##### 3.7 编辑区及控制台字体设置

<img src="img\20220402212331.png" alt="20220402212331.png"/>

<img src="img\Snipaste_2022-04-03_22-27-35.png" alt="Snipaste_2022-04-03_22-27-35.png"/>

##### 3.8 设置单行注释起始位置

<img src="img\Snipaste_2022-04-03_11-23-18.png" alt="Snipaste_2022-04-03_11-23-18.png"/>

<img src="img\Snipaste_2022-04-03_12-27-37.png" alt="Snipaste_2022-04-03_12-27-37.png"/>

##### 3.9 设置代码换行及对齐规则

<img src="img\Snipaste_2022-04-03_11-58-50.png" alt="Snipaste_2022-04-03_11-58-50.png"/>

##### 3.10 消除IDEA常见警告

注释代码不警告

<img src="img\Snipaste_2022-04-03_12-17-25.png" alt="Snipaste_2022-04-03_12-17-25.png"/>

Spring Autowriting

<img src="img\Snipaste_2022-04-03_12-20-55.png" alt="Snipaste_2022-04-03_12-20-55.png"/>

##### 3.11 修改类头的文档注释信息

```java
/**
 * Description : 
 * 
 * @author Eric L SHU
 * @date ${YEAR}-${MONTH}-${DAY} ${TIME}
 * @since jdk-11.0.14
 */

/**
 * <p>Copyright (c) ${YEAR} Authors. All rights reserved.
 *
 * <p>Project: ${PROJECT_NAME}
 * <p>Created By : Eric L SHU
 * <p>Created On : ${YEAR}-${MONTH}-${DAY} ${HOUR}:${MINUTE}:${SECOND}
 *
 * Description :
 * 
 * @version 1.0
 * @since jdk-17
 */
```

<img src="img\Snipaste_2022-04-03_12-09-51.png" alt="Snipaste_2022-04-03_12-09-51.png"/>

##### 3.12 全局及项目编码格式

<img src="img\Snipaste_2022-04-03_11-47-05.png" alt="Snipaste_2022-04-03_11-47-05.png"/>

##### 3.13 设置代码软分行

<img src="img\Snipaste_2022-04-03_11-28-24.png" alt="Snipaste_2022-04-03_11-28-24.png"/>

<img src="img\Snipaste_2022-04-03_11-29-31.png" alt="Snipaste_2022-04-03_11-29-31.png"/>

##### 3.14 隐藏特定类型文件不显示

<img src="img\20220402223507.png" alt="20220402223507.png"/>

#### 4. Plugins

- Alibaba Cloud Toolkit
- Alibaba Java Coding Guidelines 
- Background Image Plus +
- CodeGlance
- Codota
- ELM
- GitHub Copilot
- GitToolBox
- Grep Console
- JUnitGenerator
- Key Promoter X
- LeetCode Editor
- Maven Helper
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

<img src="img\20220402211131.png" alt="20220402211131.png"/>

Git 窗口和 Commit窗口显示内容分离

<img src="img\20220402222841.png" alt="20220402222841.png"/>

设置改动文件展示分组模式

<img src="img\20220402223816.png" alt="20220402223816.png"/>

#### 6. Build, Execution, Deployment

##### 6.1 Maven 相关配置

File -> Settings -> Build, Execution, Deployment -> Build Tools -> Maven

<img src="img\20220402211345.png" alt="20220402211345.png"/>

<img src="img\20220402221058.png" alt="20220402221058.png"/>

##### 6.2 设置编译及构建内存

<img src="img\Snipaste_2022-04-03_11-32-48.png" alt="Snipaste_2022-04-03_11-32-48.pn"/>

##### 6.3 设置自动编译

<img src="img\Snipaste_2022-04-03_12-11-52.png" alt="Snipaste_2022-04-03_12-11-52.png"/>

#### 7. Tools

##### 7.1 设置Terminal默认为Git

<img src="img\Snipaste_2022-04-03_12-44-44.png" alt="Snipaste_2022-04-03_12-44-44.png"/>

##### 7.2 系统用户名设置

<img src="img\Snipaste_2022-04-03_12-46-00.png" alt="Snipaste_2022-04-03_12-46-00.png"/>

#### 8. 设置SDKs

File -> Project Structure -> Platform Settings -> SDKs

<img src="img\20220402194236.png" alt="20220402194236.png"/>

File -> Project Structure -> Project Serrings

<img src="img\20220402194414.png" alt="20220402194414.png"/>

#### 9. 配置导出和导入

<img src="img\Snipaste_2022-04-03_12-49-27.png" alt="Snipaste_2022-04-03_12-49-27.png"/>
