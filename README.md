# YooooDoNotDeleteMe

This is my stuff.

## TODO

- [ ] tmuxinator sample config
- [ ] https://github.com/ahmetb/kubectx
- [ ] https://github.com/superbrothers/zsh-kubectl-prompt

## Install

1. Clone this project.
2. Install `oh-my-zsh` first
3. Run `./install_homebrew_mac_libs_apps.sh` to select libs and apps (remember to install neovim to proceed the next step)
4. Run `./install_vim_misc.sh`, will link configs, install and configure `neovim`, `spf13-vim`, `oh-my-zsh`.

   ```
   .vimrc.before.local
   .vimrc.bundles.local
   .vimrc.local
   ```

5. Configure neovim (https://github.com/neovim/neovim)

   1. Python2/3 issue

      https://neovim.io/doc/user/provider.html#provider-python

      ```
      $ python3 -m pip install --user --upgrade pynvim
      and modify YCM install.sh, change python to python3 in first line
      and execute install.sh
      ```

6. , my favorite theme is Seti currently. (I copied it from [here](https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/schemes/Seti.itermcolors))

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

7. Install powerline 10k https://github.com/romkatv/powerlevel10k 
8. Edit `~/.config/hub` with GitHub personal token.

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

See `vimrc.bundles` (after installing `spf13-vim`) and `vimrc.bundles.local`

## Some notes

### Mac apps

Also see `mac_apps`

* [Alfred 4](https://www.alfredapp.com/)
* [AppCleaner](https://freemacsoft.net/appcleaner/)
* Audacity (mp3 editor)
* [Annotate](https://apps.apple.com/us/app/annotate-capture-and-share/id918207447?mt=12) - Capture and Share 
* Authy
* Boom 2 (Not Free)
* BatteryHealth
* BitBar
* Burpsuite - An integrated platform for performing security testing of web applications. (https://portswigger.net/burp/)
* DaisyDisk - 檢查磁碟用量分佈 (Not Free)
* Dash - 離線查詢文件 (Not Free)
* DataGrip
* [Dozer](https://github.com/Mortennn/Dozer) 一拖一點還你乾淨的選單欄
* [Docker.app](https://docs.docker.com/docker-for-mac/install/)
* [Dropbox](https://www.dropbox.com/install)
* [Droplr](https://droplr.com/apps/)
* Dozer - clean menu
* [eul](https://github.com/gao-sun/eul) - mac system stat monitor
* Firefox
* FileZilla
* ~~Flycut (copy history)~~ You can use `Alfred 4` instead.
* Google Chrome
* Goland
* Grammarly
* [Gas Mask](https://github.com/2ndalpha/gasmask) - GUI tool to manage hosts file. I used [SwitchHosts](https://github.com/oldj/SwitchHosts) before, but it is wrapped by Electron, which is so heavy.
* HyperSwitch - Quick Switch while in command+tab mode (https://bahoom.com/hyperswitch)
    * https://www.reddit.com/r/mac/comments/9l91l4/hyperswitch_not_working_with_mojave_ideas_for/
* iTerm2
* iTerm2ColorSchema - http://iterm2colorschemes.com/
* [Insomnia](https://github.com/Kong/insomnia) - The API Design Platform and REST Client (I use Paw now)
* [itsycal](https://github.com/sfsam/Itsycal) - a tiny calendar for your Mac's menu bar.
* Karabiner - A powerful and stable keyboard customizer for OS X.
* Keka - 解壓縮工具
* [Keycastr](https://github.com/keycastr/keycastr) - an open-source keystroke visualizer.
* LimeChat - IRC gui client
* Little Snitch 3 - Check network connections (Not Free)
* [Lulu](https://github.com/objective-see/LuLu) is the free macOS firewall 
* OmniFocus
* Postico - A Modern PostgreSQL Client for OS X. Free Version (https://eggerapps.at/postico/)
* Postman (I use Paw now)
* [Paw](https://paw.cloud/)
* [Rectangle](https://rectangleapp.com/) - window management (I change to use Rectangle instead of Spectacle)
* Reeder (RSS)
* [Runcat](https://apps.apple.com/us/app/runcat/id1429033973?mt=12)
* Seil
* [Slack](https://slack.com/intl/en-tw/)
* SourceTree
* Sequel Pro
* SSH Tunnel Manager
* Spotify
* TeamViewer
* Transmission - BT client.
* Typora
* [Trailer](http://ptsochantaris.github.io/trailer/) - mac app for github notification
* Time out (productivity)
* Vagrant
* VirtualBox
* VSCode
* VLC
* Wireshark
* WifiExplorerLite
* Xcode
* zoom.us
* zsh + oh-my-zsh
* Dadroit JSON Viewer.app - for big json data
* Wireguard
* Xnip - screen capture

### hombrew (http://brew.sh/)

See `mac_libs` and `mac_apps`

## Some references

http://harrycode.logdown.com/tags/Vim

https://ruby-china.org/topics/25295

## Some fonts

* [powerline-fonts](https://github.com/powerline/fonts)
* [fantasque-sans](https://github.com/belluzj/fantasque-sans)

## Screen Saver

* https://github.com/chrstphrknwtn/grid-clock-screensaver
* or `aerial` via homebrew

## Alfred 4 workflows

See [AlfredWorkFlows.md](https://github.com/kerkerj/dotfiles/blob/master/AlfredWorkFlows.md)
