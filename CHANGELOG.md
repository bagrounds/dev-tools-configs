## Change Log

All notable changes to this project will be documented in this section. This
project adheres to [Semantic Versioning](http://semver.org/).

Please use: Added, Changed, Deprecated, Removed, Fixed, or Security as labels.
<br>

#### 0.6.4 - (2016-08-17)
##### Added
* .vimrc
  * vim-airline plugin

#### 0.6.3 - (2016-08-12)
##### Added
* .vimrc
  * UltiSnips plugin

##### Changed
* .i3status.config
  * date and time display

#### 0.6.2 - (2016-08-12)
##### Changed
* .i3status.config
  * status formatting
* .Xdefaults
  * background color back to original cyan
* .i3.config
  * font to match system font (.Xdefaults)

#### 0.6.1 - (2016-08-10)
##### Removed
* .i3status.config
  * vpn status (broken)

#### 0.6.0 - (2016-08-10)
##### Added
* .i3status.config

#### 0.5.0 - (2016-08-10)
##### Added
* .Xdefaults

#### 0.4.2 - (2016-08-10)
##### Fixed
* .vimrc
  * terminal colors for solarized theme

#### 0.4.1 - (2016-08-10)
##### Removed
* .vimrc
  * dead code and unused plugins

#### 0.4.0 - (2016-08-10)
##### Added
* .i3.config

#### 0.3.0 - (2016-08-05)
##### Added
* .tmux.conf
  * tmux plugin manager
  * plugin: tmux-resurrect

##### Removed
* command to run 'npm run eslint --' on syntax checking (slow and error prone) 

#### 0.2.1 - (2016-06-25)
##### Added
* .vimrc
  * syntax highlighting
    * stylus

#### 0.2.0 - (2016-06-24)
##### Added
* .vimrc
  * syntax highlighting
    * pug/jade
    * json
  * NERDCommenter plugin
    * [normal mode]
      * comment current line: \ cc
      * uncomment current line: \ cu
  * nerdtree-git-plugin
    * show git file status in NERDTree
* .tmux.conf
  * default shell: zsh
  * default 256 colors
  * keybindings:
    * reload tmux config: C-b C-r
    * resize current pane: M-{h,j,k,l}
  * vi keybindings (experimental)
  * moue control (to select and adjust pane sizes)

##### Removed
* .vimrc
  * keymapping: double tap enter (caused lag when using enter key)

#### 0.1.0 - (2016-06-20)
##### Added
* README.md
* CHANGELOG.md (this)
* LICENSE (MIT)
* .tmux.conf

