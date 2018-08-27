# WinVimrc - vimrc on windows
本项目试图实现一份快速、轻量、编辑体验完美、**普通**的Windows下的Vim配置。项目包
含在windows下正常工作的vim配置文件和相应的颜色主题文件、字体文件，目前考虑支持的
语言有C、JS、markdown。（毕竟似乎只用得到这些语言）

## Installation
1. 从[vim-jp](http://vim-jp.org/redirects/)或[vim-github](https://github.com/vim/vim-win32-installer/releases)
获取64位的版本，更换掉32位版本的vim8x文件夹。（不知为啥找不到正常的64位安装包）
2. 克隆本项目。
3. 手动在$VIM路径下创建files\backup，files\undo，files\swap文件夹。
4. 安装fonts中的字体。
5. 把themes中的主题放到vimfiles\color中。

## Features
1. C、JS的代码高亮和补全、语法提示、搜索替换和跳转。
2. markdown的高亮和预览。
3. 对Git有必要的功能支持。

## Notes
### Problems
#### 无法将tab替换为space
在vimrc中使用`set expandtab`无法将tab替换为space。不过在gvim启动后手动设置
`:set expandtab`可以正常使用。
##### 解决方案
注释掉`set paste`。:v:
### Tips
#### 使用ctrlp时可以安装ag来加速
有关ag的信息参见[ag official](https://github.com/ggreer/the_silver_searcher)和
[ag unofficial windows daily build](https://github.com/k-takata/the_silver_searcher-win32/releases)
。目前ag使用有些问题所以没有启用。
#### 使用codedark主题需要安装插件vim-code-dark
取消相应插件注释并安装即可。
#### 插件tagbar需要下载ctags
[universal ctags daily build](https://github.com/universal-ctags/ctags-win32/releases)

## Plugins List
### vim-airline/vim-airline
[airline](https://github.com/vim-airline/vim-airline)
### tomasiser/vim-code-dark
[vim-code-dark](https://github.com/tomasiser/vim-code-dark)
### scrooloose/nerdtree
[nerdtree](https://github.com/scrooloose/nerdtree)
### junegunn/fzf.vim
[fzf](https://github.com/junegunn/fzf)
[fzf.vim](https://github.com/junegunn/fzf.vim)
### shougo/neocomplete.vim
[neocomplete](https://github.com/Shougo/neocomplete.vim)
### Yggdroot/indentLine
[indentLine](https://github.com/Yggdroot/indentLine)
### ctrlpvim/ctrlp.vim
[ctrlp](https://github.com/ctrlpvim/ctrlp.vim)
### majutsushi/tagbar
[tagbar](https://github.com/majutsushi/tagbar)
### terryma/vim-multiple-cursors
[vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)
### tpope/vim-surround
[vim-surround](https://github.com/tpope/vim-surround)
### scrooloose/nerdcommenter
[nerdcommenter](https://github.com/scrooloose/nerdcommenter)
### jiangmiao/auto-pairs
[auto-pairs](https://github.com/jiangmiao/auto-pairs)
### airblade/vim-gitgutter
[vim-gitgutter](https://github.com/airblade/vim-gitgutter)
### easymotion/vim-easymotion
[vim-easymotion](https://github.com/easymotion/vim-easymotion)
