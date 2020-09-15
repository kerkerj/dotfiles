# YooooDoNotDeleteMe

This is my stuff.

## TODO

- [  ] zsh config
- [  ] tmuxinator sample config

## Install

1. Clone this project.

2. Run `./install.sh`, will install homebrew and apps, link configs, install and configure `neovim`, `spf13-vim`, `oh-my-zsh`.

   ```
   .vimrc.before.local
   .vimrc.bundles.local
   .vimrc.local
   ```

3. Configure neovim (https://github.com/neovim/neovim)

   1. Python2/3 issue

      https://neovim.io/doc/user/provider.html#provider-python

      ```
      $ python3 -m pip install --user --upgrade pynvim
      and modify YCM install.sh, change python to python3 in first line
      and execute install.sh
      ```

4. , my favorite theme is Seti currently. (I copied it from [here](https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/schemes/Seti.itermcolors))

   1. I use [ gruvbox ](https://github.com/morhetz/gruvbox) as my vim colorschema

   2. To test true color:

      Run `printf "\x1b[38;2;255;100;0mTRUECOLOR\x1b[0m\n"` or 

      ```
      # from https://gist.github.com/XVilka/8346728
      awk 'BEGIN{
          s="/\\/\\/\\/\\/\\"; s=s s s s s s s s;
          for (colnum = 0; colnum<77; colnum++) {
              r = 255-(colnum*255/76);
              g = (colnum*510/76);
              b = (colnum*255/76);
              if (g>255) g = 510-g;
              printf "\033[48;2;%d;%d;%dm", r,g,b;
              printf "\033[38;2;%d;%d;%dm", 255-r,255-g,255-b;
              printf "%s\033[0m", substr(s,colnum+1,1);
          }
          printf "\n";
      }'
      ```

5. Install powerline 10k https://github.com/romkatv/powerlevel10k 

## Enable powerline font

clone [https://github.com/powerline/fonts](https://github.com/powerline/fonts)`, and run `./install.sh`

Then choose fonts in iTerm2.

My personal favorites: `Meslo LG S DZ Regular for powerline`

## Reload tmux configuration

```
$ tmux source-file ~/.tmux.conf
```

## Gruvbox issue

https://github.com/morhetz/gruvbox/wiki/Terminal-specific

Use neovim will fix anything!

## GitHub Dark Script

https://github.com/StylishThemes/GitHub-Dark-Script

Choose `Install From GitHub`

## macOS System Preference Config

1. https://github.com/specialunderwear/Hosts.prefpane
1. https://github.com/jimbojsb/launchrocket
1. [Wi-Fi disconnects when I lock the mac](https://apple.stackexchange.com/questions/71884/wi-fi-disconnects-when-i-lock-the-mac)

## Increase Cursor Speed

1. [https://www.maketecheasier.com/adjust-cursor-speed-in-mac/](https://www.maketecheasier.com/adjust-cursor-speed-in-mac/)

## Just my notes below

### OSX - must use F1 to F12 as standard function keys

* `F2`  - Remove all trailing spaces
* `F3`  - Save current vim session with default session name `vim_sessions` (Use `:SSave` to save sessions manually)
* `F4`  - Load vim session from default session `vim_sessions` (Use `:SLoad` to load sessions manually)
* `F5`  - Nerdtree
* `F6`  - copy selected text to OS clipboard
* `F7`  - tagbar
* `F12` - paste mode

### Leader is set to `,` use `:let mapleader` to see current leader key

* `ctrl-x ctrl-o` - when in insert mode, show Omni completion
* `<leader>tt` or `F7` - to toggle tagbar
* `gcc` - comment one line
* `<leader>,` - toggle search highlight
* `<leader>p` - Toggle past mode (same as <F12>)
* `<leader>n` - to rename current file
* `<leader>g` - to generate the header guard
* `<leader>b` - to toggler buffergator
* `<C-J>`     - to auto insert snips
* `<leader>ig` - toggle indent guide
* `<leader><leader>w/b` - easymotion

### How to use cTags

1. check with `which ctags`
2. run `ctags -R -f .tags --exclude=.git --exclude=log` in the root directory of rails (or other languages) project
3. set `set tags=./.tags;` in .vimrc
4. now can use `ctrl + ]` to navigate in source files

## .agignore

1. set global ignore folders for `ag`

## Plugin list

```
Plugin 'gmarik/vundle'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'spf13/vim-colors'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'spf13/vim-autoclose'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'kristijanhusak/vim-multiple-cursors'
Plugin 'vim-scripts/sessionman.vim'
Plugin 'matchit.zip'
Plugin 'bling/vim-airline'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'flazz/vim-colorschemes'
Plugin 'mbbill/undotree'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-scripts/restore_view.vim'
Plugin 'mhinz/vim-signify'
Plugin 'osyo-manga/vim-over'
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-indent'
Plugin 'gcmt/wildfire.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-commentary'
Plugin 'godlygeek/tabular'
Plugin 'majutsushi/tagbar'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'elzr/vim-json'
Plugin 'pangloss/vim-javascript'
Plugin 'briancollins/vim-jst'
Plugin 'kchmck/vim-coffee-script'
Plugin 'amirh/HTML-AutoCloseTag'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'tpope/vim-rails'
Plugin 'fatih/vim-go'
Plugin 'mattn/emmet-vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'ervandew/supertab'
```

## Some notes

### Mac apps

* [Alfred 4](https://www.alfredapp.com/)
* [AppCleaner](https://freemacsoft.net/appcleaner/)
* Audacity (mp3 editor)
* ~~Atom~~
* Authy
* Boom 2 (Not Free)
* Boostnote
* BatteryHealth
* BitBar
* Burpsuite - An integrated platform for performing security testing of web applications. (https://portswigger.net/burp/)
* DaisyDisk - 檢查磁碟用量分佈 (Not Free)
* Dash - 離線查詢文件 (Not Free)
* [Docker.app](https://docs.docker.com/docker-for-mac/install/)
* [Dropbox](https://www.dropbox.com/install)
* [Droplr](https://droplr.com/apps/)
* Dozer - clean menu
* ~~Evernote~~
* Firefox
* FileZilla
* ~~Flycut (copy history)~~ You can use `Alfred 4` instead.
* Google Chrome
* Goland
* Grammarly
* HyperSwitch - Quick Switch while in command+tab mode (https://bahoom.com/hyperswitch)
    * https://www.reddit.com/r/mac/comments/9l91l4/hyperswitch_not_working_with_mojave_ideas_for/
* iTerm2
* iTerm2ColorSchema - http://iterm2colorschemes.com/
* Insomnia
* ~~Joplin (another note and todo app, like Boostnote)~~
* Karabiner - A powerful and stable keyboard customizer for OS X.
* Keka - 解壓縮工具
* LimeChat - IRC gui client
* Little Snitch 3 - Check network connections (Not Free)
* LiveReload
* LastPass
* LINE
* ~~MacDown - markdown editor~~
* Memory Clean
* MPlayerX
* MySQLWorkbench - MySQL gui client
* Medis (self-built)
* MoneyPro
* Nally - BBS client
* OmniFocus
* ~~pgAdmin3 - A open source postgresql gui client (http://www.pgadmin.org/)~~
* Postico - A Modern PostgreSQL Client for OS X. Free Version (https://eggerapps.at/postico/)
* Postman
* rdm.app - redis gui client
* Robomongo - mongodb gui client
* ~~Reeder (RSS)~~
* RubyMine
* Runcat
* Seil
* Skype
* Slack
* SoureTree
* Sequel Pro
* [Spectacle](https://www.spectacleapp.com/) - window arrangement
* SSH Tunnel Manager
* Spotify
* ~~Sublime text~~
* ~~Table Plus (database management)~~
* TeamViewer
* Transmission - BT client.
* Tunnelblck
* Typora
* Trailer - github notification
* Time out (productivity)
* Vagrant
* VirtualBox
* VSCode
* VLC
* Wireshark
* WifiExplorerLite
* Xcode
* ~~XtraFinder - Replacement of Mac Finder. (Need to disable SIP)~~
* zoom.us
* zsh + oh-ny-zsh
  * zsh-syntax-highlighting (see https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#with-oh-my-zsh)
  * autojump
  * ssh-agent
  * theme: avit

### hombrew (http://brew.sh/)

* autojump - A cd command that learns - easily navigate directories from the command line http://wiki.github.com/joelthelion/autojump/
* the_silver_searcher - ag quicker seacher
* tig - Text-mode interface for git http://jonas.nitro.dk/tig/
* tmate - Instant terminal sharing.
* tree - a recursive directory listing command.
* htop
* vim
* siege - a http load testing and benchmarking utility.
* httpie - CLI HTTP client; user-friendly cURL replacement featuring intuitive UI, JSON support, syntax highlighting, wget-like downloads, extensions, etc. http://httpie.org
* jq - json query
* ctags
* watchman - watches files and takes action when they change.
* wget
* hugo
* vegeta
* swiftenv - Swift Version Manager
* go
* python3
* neovim

```
$ brew list
# please see Brewfile

# basic
$ brew install autojump diff-so-fancy direnv fzf envchain httpie hub jq git git-extras git-flow neovim peco reattach-to-user-namespace the_silver_searcher tig tmux tree wget watch
```

## Some references

http://harrycode.logdown.com/tags/Vim

https://ruby-china.org/topics/25295

## Some fonts

* [powerline-fonts](https://github.com/powerline/fonts)
* [fantasque-sans](https://github.com/belluzj/fantasque-sans)



## Screen Saver

* https://github.com/chrstphrknwtn/grid-clock-screensaver



## Alfred 4 workflows

See [AlfredWorkFlows.md](https://github.com/kerkerj/dotfiles/blob/master/AlfredWorkFlows.md)
