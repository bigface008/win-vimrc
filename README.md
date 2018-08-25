# WinVimrc - vimrc on windows
本项目试图实现一份快速、轻量、编辑体验完美、**普通**的Windows下的Vim配置。项目包
含在windows下正常工作的vim配置文件和相应的颜色主题文件、字体文件，目前考虑支持的
语言有C、JS、markdown。（毕竟似乎只用得到这些语言）

## Installation
1. 克隆本项目。
2. 手动在$VIM路径下创建files\backup，files\undo，files\swap文件夹。
3. 安装fonts中的字体。
4. 把themes中的主题放到vimfiles\color中。

## Features
1. C、JS的代码高亮和补全、语法提示、搜索替换和跳转。
2. markdown的高亮和预览。
3. 对Git有必要的功能支持。

## Notes
记录使用中遇到的问题并尝试解决
### 无法将tab替换为space
在vimrc中使用set expandtab无法将tab替换为space。
gvim在启动后手动设置`:set expandtab`可以正常使用。
但是仍然找不到解决方案。

#### 解决方案
注释掉`set paste`。:v:
