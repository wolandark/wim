<!--<div align="center">
<img src="https://github.com/wolandark/wim/blob/main/img/wim-logo-png-transparent1.png" style="width=60%;">
</div>
-->

# Wim News
#### Version 3.1 has been released
- Improved style and workflow
- Cleaned up the config
- Corrections on Coc.nvim's behavior
- and many more ...
#### Version 3.2 has been released
- Replaced vim-css plugin with vim-hexokinase due to vim-css's inability to highlight colors in C files properly (you need go for this new plugin which the installation script will take care of)
- Improved easy motion bindings
- Added Catpuccino theme
- Updated and improved the installation script

#### Use this simple installation script for Arch and Arch-based distros.
```
bash <(curl -s https://raw.githubusercontent.com/wolandark/wim/main/Wim_Arch_Install.sh)
```
#### Use this simple installation script for Debian 12 and Testing.
```
bash <(curl -s https://raw.githubusercontent.com/wolandark/wim/main/Wim_Debian_Install.sh)
```
Otherwise satisfy the dependencies and grab the wim-3.1.vimrc and rename it to .vimrc and start vim. Plugins will install automatically
#### Watch the script work [here](https://www.youtube.com/watch?v=_yHH8xjcnZA)
<br>

# Intro
The purpose of this project is to not only provide an IDE-like vimrc, but also to teach you how it is constructed. It is made from the ground up from the vanilla Vim with the help of plugins and .vimrc configurations. 

# Dependencies
- Vim 8+ upto latest (Tested and also works on vim 7)
- [vimplug](https://github.com/junegunn/vim-plug) (Will be installed automatically as of version 2. Unix and Linux Only! for windows you must use the windows curl command of vimplug)
- nodejs and npm (For coc completion)
- FZF 
- Figlet & boxes (For the start menu ascii art)

<h1> Some of the features</h1>

- Out of the box plugin installation <br>
- Tab Completion and snippets for fast coding <br>
- Easy tab and split navigation <br>
- Start Screen with bookmarks and file history <br>
- Beautiful built in base16 colorschemes
- Nerdtree-like configuration of Netrw <br>
- Customized Lighline statusline <br>
- Customizability! It is lightweight and extensible without having to learn a whole new software or language  <br>

<h1>Usage / Installation </h1>

### On Arch Linux and other derivatives use the provided installation script, otherwise continue manually <br>

#### Windows users must delete the statement that auto installs vimplug at the beggining of the vimrc and proceed with the manual installation of vimplug, then launch vim with the new vimrc so that the plugins can be installed. Naturally you must use another editor to alter the vimrc. <br>

- As of version 2, once you start vim with my .vimrc. vimplug and plugins will be installed automatically. Don't panic and let it work <br>
- Refer to the release page for easy download. Remember to rename the file to .vimrc<br>
- Place the .vimrc file in your home directory<br>
- You can rename your already existing .vimrc or move it to another directory. this way; you can always bring it back if you dont like Wim<br>
- Place the roman.flf font in <code>/usr/share/figlet/fonts/</code> <br>
- Install [boxes](https://github.com/ascii-boxes/boxes/) from repositories or compile it.
- Refer to the [list](https://github.com/neoclide/coc.nvim/wiki/Language-servers) of autocompletion languages and add the ones you'd like with 

- <code> :CocInstall </code><br>
  	- Example: <code>:CocInstall coc-css</code> <br>
- <code>:CocInstall coc-explorer</code> for using the [coc-explorer](https://github.com/weirongxu/coc-explorer) file manager instead of netrw
  - to start netrw <code>:Vexplore</code> 
- Once the downloads are finished you can start using Vim normally<br>
- Leader key is naturally space<br>
- Refer to the table below for a list of key bindings<br>
<h4>Optional Dependencies </h4>

- Ranger. See [mine](https://github.com/wolandark/ranger) <br>
- Vifm<br>

<h4> Notice </h4>

- It was tested on multiple devices and distros with Vim from the terminal on linux and Gvim on Arch and Windows and it works perfectly. If anyone happens to use this on OSX please provide me with your feedback.<br>
- Please keep in mind that in case your terminal emulator takes charge of some of your keys, its up to you to figure it out. Some terminals do hold unto your Ctrl or Alt or shift key for their own functions
- You can review the list of plugins and comment out or delete the lines about the ones you dont want. This must be done before running <code>:PlugInstall</code>
  - If you want to delete any plugins later, delete the lines about them and run: <code>:PlugClean</code>

### Coc tab completion set up
- Open your CocConfig by typing
    <code>:CocConfig</code> into vim's command mode
- add the following lines to improve Coc's Tab behavior 
```
{
     "suggest.noselect": true
}
```
<code>:wq</code> to save and quit

# Keymappings (Always up to date)

<h4>leader is space</h4>

 #### Key Bindings

 | Keys       | Function                         |
 | --         | --                               |
 | leader v   | Vifm Floating                    |
 | leader r   | Ranger Floating                  |
 | leader e   | Coc-Explorer On The Left Side    |
 | leader t   | Terminal                         |
 | leader i   | Pop Start Menu                   |
 | leader T   | NewTab                           |
 | leader d   | Duplicate Cleaner                |
 | leader 1-9 | Go To Tab                        |
 | leader tm  | Move Tab                         |
 | leader x   | Close Tab                        |
 | leader c   | Fuzzy Colorschemes               |
 | leader b   | Fuzzy Buffers                    |
 | leader s   | Fuzzy File Search                |
 | leader W   | Fuzzy Windows                    |
 | leader H   | Fuzzy History                    |
 | leader Hc  | Fuzzy Command History            | 
 | leader h   | chmod +x current file            |
 | leader M   | Fuzzy Mappings                   |
 | leader w   | Quick Save w!                    |
 | leader op  | Source Current File              |
 | leader z   | Fix Spelling For 1 word          |
 | leader l   | Fix Spelling On 1 Line           |
 | leader ww  | VimWiki                          |
 | leader \   | Border Current line using Toilet |
 | leader mk  | mkview                           |
 | leader [   | Add Empty Line Above             |
 | leader ]   | Add Empty Line Below             |
 | leader S   | Add Empty Line Above And Below   |
 | leader u   | Move Current Line A Paragraph Up |
 | leader k   | Move Current Line One Line Up    |
 | leader j   | Move Current Line One Line Down  |
 | leader '   | Open Vim Terminal                |
 | Shift Arrows     | Resize Splits                 |
 | Ctrl hjkl/Arrows | Focus Between Splits          |
 | F6               | SpellCheck                    |
 | Ctrl j           | Trigger Snippets              |
 | Ctrl j k         | Move Within Triggered Snippet |
 | Ctrl PGDNN       | List Available Snippets       |
 | gcc              | Comment Out                   |
 | yss(char)        | Surround line                 |
 | ysiw(char)       | Surround word                 |
 | fy               | find char across splits       |
 | fl               | find lines across splits      |
 | ml |             Move to LIne |
 | fw               | find word across splits       |
 | s                | find two chars across splits  |
 | jj               | escape                        |
 | ;                | :                             |
| Ctrl m        | Center Cursor                 |
| bs            | #!/bin/bash                   |
| be            | #!/usr/bin/env bash           |
| br            | \<br>                         |
| Ctrl h/Arrows | Move Between Splits           |
| Ctrl j/Arrows | Move Between Splits           |
| Ctrl k/Arrows | Move Between Splits           |
| Ctrl l/Arrows | Move Between Splits           |
| leader R      | Rotate Splits                 |
| Alt hjkl      | Move With hjkl In Insert Mode |
| Alt Arrows    | Go Tabs Right Or Left         |

<!--
New Catpuccino theme
![wim-catpuccino](https://user-images.githubusercontent.com/107309764/233864390-5562711e-e252-41b3-a1fe-cb14932eed95.png)
Default Gruvbox Colorscheme. Netrw & TagBar
<img src="https://github.com/wolandark/wim/blob/main/img/v3/2023-03-30-041732_1920x1080_scrot.png">
Startify Dashboard with history and shortcuts
<img src="https://github.com/wolandark/wim/blob/main/img/v3/2023-03-30-042007_1920x1080_scrot.png">
Completion and language support
<img src="https://github.com/wolandark/wim/blob/main/img/v3/2023-03-30-041527_1920x1080_scrot.png">
<img src="https://github.com/wolandark/wim/blob/main/img/v3/2023-03-30-041921_1920x1080_scrot.png">
Press Leader+c to chose a new colorscheme
<img src="https://github.com/wolandark/wim/blob/main/img/v3/2023-03-30-042030_1920x1080_scrot.png">
-->

<h1>FAQ</h1>

<h5> Whats with the name?</h5>
Woland's Vim = Wim. Get it?

<h5> What features does Wim offer? </h5>

- Customizability! It is lightweight and extensible without having to learn a whole new software  <br>
- Easy tab and split navigation <br>
- Start Screen with bookmarks and file history <br>
- Beautiful built in colorschemes
- Easy completion ctags, syntax check and more <br>
- Lighline, Vim statusline <br>
  - Choices! It is all about choices <br>

<h5> Can I expect support? </h5>
Yes! Just ask and I will answer. When asking however, provide proper information so that I can help you <br>

<h5> Why didn't you use Neovim like everyone else? </h5>
Because Vim is the one I use and frankly Vim is fine.

<h5> Will you make custom vimrc configurations? </h5>

[Contact me](https://t.me/inlovewithapenguin)

<h5> Are you open to collaborations? </h5>

[Contact me](https://t.me/inlovewithapenguin)

<h5>But vimplug is installed with curl!</h5>

Yes! and it does only one thing, adding an easier integration for installing plugins. <br>
<hr>

<h6> Consider Supporting the project</h6>

<strong>BTC</strong><br>
bc1q7tr3znnrsqq85kalk5zedak9mgn9u3ly849t8z <br>
<strong>ETH</strong><br>
0x28a60D7429a2DFdf6b009261D3814cA182B34Bb2<br>
<strong>Monero</strong><br>
0xd84c96dDa2E6f9ee9DD0439F6F7812c5b8869fE4<br>
<strong>Doge</strong><br>
DJKBgAEQ7n5GyozM8jqmGbxnhcH6U2V8hV<br>
<strong>Tether</strong><br>
0x28a60D7429a2DFdf6b009261D3814cA182B34Bb2<br>
<strong>Tron</strong><br>
TX8mVZajyy7cmH9vsREyAMPjgtRu23ZmxJ<br>
<strong>ADA</strong><br>
addr1qxhv2rfrs37qvs0cllfcnu0rd83wre609s74aufkd82da9528v7xq34usds6t8sdt7zjy0hvkcwdfnp9jwacdn0kwuesatvjx4<br>
<strong>Avalanche</strong><br>
0x28a60D7429a2DFdf6b009261D3814cA182B34Bb2<br>
