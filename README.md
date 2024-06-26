## This repository is under maintenance. Come back later

<div align="center">
<img src="https://github.com/wolandark/wim/assets/107309764/8bf3528b-9751-4bda-95e4-70c3b958cd5f" style="width:50%;">
</div>

# Wim News
## Version 3.3 has been released with great improvements

<details> 
<summary> Expand Feature List</summary>
<br> 

- Clean installation. Everything will go where they belong, under `$HOME/.vim/`
- Automatic Plugin Installation
	- Plugins for LSP, completion, snippets, colors, web development, Git, usability, enhancements, jumping around, utility, integrations, etc.
	- Vimwiki configuration
	- Wim ships with a default vimwiki wiki file that you can read anytime inside Wim.
- Set the encoding to UTF-8.
- Auto save toggle
- Theme setup
    - Catppuccin Mocha theme with true color support and GUI font configuration.
- Cursor shape configuration for different modes.
- Startify configuration
    - Customized Startify start screen with a custom header, footer, and bookmarks.
- Clipboard configuration
    - Uses the system clipboard for copy-paste.
- Remember cursor position
    - Remembers the cursor position in files.
- Persistent undo history
    - Sets up persistent undo history with a custom directory.
- Various sane vim settings
    - Vim settings like autoindent, ignorecase, number, relativenumber, etc.
- Netrw configuration
    - Configures netrw with hidden dotfiles and other settings.
- Lightline statusbar
    - Lightline status bar with a custom theme and components.
- Spell checking
    - spell checking with custom mappings and highlights.
- Bilingual configuration with easy layout changing inside Vim.
- hidden ZWNJ characters by default for languages like Persian.
- Custom mappings
   - custom key mappings for various actions.
- Split navigation
    - key mappings for split window navigation and resizing.
- Floaterm configuration
    - floaterm plugin with custom key mappings and settings.
- Gitgutter configuration
    -  GitGutter signs for added, modified, and removed lines.
- Tagbar configuration
    - Tagbar with a custom ctags binary path.
- Terminal mappings
    - Sets up key mappings for terminal usage within Vim.
- Runtime macros
    -  Load custom runtime macros for various functionalities such as justification, emojis and matchit.
- Ultisnips configuration
    - UltiSnips with custom key bindings for snippet expansion and navigation.
- Clever-f configuration
    - Clever-F plugin with custom settings for enhanced f/F/t/T motions.
- Disable unnecessary internal plugins
    -  Disabled several built-in Vim plugins to optimize startup time.
- coc.nvim configuration
    - coc.nvim for autocompletion, diagnostics, and other LSP s.
- coc global extensions
	 - Installs and configures various coc.nvim extensions for different languages and functionalities.
- coc-explorer configuration
    -  coc Explorer as the file explorer with icons and customizations.
- coc-marketplace for coc extensions installation with fuzzy matching.
- Navigation mappings
    - key mappings for navigating definitions, type definitions, implementations, references, and diagnostics using coc.nvim.

</details>
<details>
<summary> Older Versions</summary>

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

</details>
<hr> 

# Intro
The purpose of this project is to not only provide an IDE-like vimrc, but also to teach you how it is constructed. This project tries to maintain a fairly small `vimrc` and provide a **great out of the box experience**  as well serving as a ground for further customization.

# Dependencies 
- Vim 9.0 or later 
	- Note: This Config Will definitely work with Vim 8.0 and later, but don't miss out on the great features of Vim 9.1! Grab the latest Vim!
- Nodejs 
- npm 

**Example:**  <br> 
Debian:<br> 
`sudo apt install nodejs npm` <br> 
Arch:<br> 
`sudo pacman -S nodejs npm`

# Installation 
After installing the dependencies, run the `install.sh` script. The script is **safe** and works sudo-less.
```
bash <(curl -s https://raw.githubusercontent.com/wolandark/wim/master/install.sh)
```

<br>

# Some of the features
**See the exhausting feature list above**

- Out of the box plugin installation <br>
- Out of the box LSP setup for HTML, CSS, JS, TS, Bash and MORE if you want it!
- Tab Completion and snippets for fast coding <br>
- Easy tab and split navigation <br>
- Start Screen with bookmarks and file history <br>
- Beautiful catpuccino and base16 colorschemes
- Customized Lighline statusline <br>
- Customizability! It is lightweight and extensible and FAST!

#### Notes

- Some terminals hold unto your Ctrl or Alt or shift key for their own functions. It's up to you to use a sane terminal emulator!
- This config has been tested on variouse GNU+Linux distros as well as MacOS, FreeBSD and Windows, but official support will only be provided for GNU+Linux distros.

<details>
<summary>Notes for Windows users</summary> 

Make sure you have `nodejs` and `npm` in your `PATH` and that you have `curl` installed. <br>  
You have to manually install `fzf` from the official repo and remove the `Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }` line from `wim-vim`. (Yes becuase you're on windows you must suffer!) <br> 
Clone the repo and move the `wim-vim` file under `C:\Users\username\vimfiles\vimrc`. Make sure to rename it to `vimrc`. Copy over the `coc-settings.json`, `cheat40.txt` and the whole `vimwiki` directory also under the aforementioned path.

Then simply start Vim and wait for the installation to finish.
</details>

<details>
<summary>Notes for Mac users</summary> 

If you plan to use Vim from the terminal, FOR THE LOVE OF CHRIST USE ITERM!
</details>

# ScreenshotsNew
<hr>

## Table of Keybindings
<details>
  <summary>Misc Keybindings</summary>

| Keys           | Function                                  |
| ---            | ---                                       |
| \<F6\>         | Turn on SpellChecking                     |
| \<F8\>         | Compile and Run Basic C Code              |
| \<F12\>        | Execute Bash, Python, Nodejs & Go Files   |
| gs             | Fix Spelling To The First Immediate Match |
| \<ESC\>\<ESC\> | Turn Off Search Highlights                |
| \a             | Auto Save Toggle                          |
| \<leader\>t    | FloatermToggle                            |
| \<leader\>M    | Maps                                      |
| \<PageUp\>     | Buffer Next                               |
| \<PageDown\>   | Buffer Previous                           |
| \<C-m\>        | gM, Center Cursor                         |
| \<leader\>\    | Border Around Current Line Using Toilet   |
| \<space\>e     | File Explorer                             |
| \<leader\>T    | New Tab                                   |
| \<leader\>mk   | Make View                                 |
| \<leader\>i    | Startify Dashboard                        |
| \<leader\>S    | Add Empty Line Above & Below Current Line |
| \<leader\>[    | Add Empty Line Above                      |
| \<leader\>]    | Add Empty Line Below                      |
| \<leader\>w    | Save                                      |
| \<leader\>so   | Save & Source Buffer                      |
| \<leader\>k    | Move Line Up                              |
| \<leader\>j    | Move Line Down                            |
| jj             | \<ESC\>                                   |
| \<leader\>pli  | PlugInstall                               |
| \<leader\>plc  | PlugClean                                 |
| \<leader\>plu  | PlugUpdate                                |
| \<leader\>pld  | PlugUpgrade                               |

</details>

<details>
  <summary>Split Navigation</summary>

| Key         | Function                 |
| ---         | ---                      |
| \<C-h\>     | Focus Left Split         |
| \<C-j\>     | Focus Bottom Split       |
| \<C-k\>     | Focus Top Split          |
| \<C-l\>     | Focus Right Split        |
| \<C-LEFT\>  | Focus Left Split         |
| \<C-DOWN\>  | Focus Bottom Split       |
| \<C-UP\>    | Focus Top Split          |
| \<C-RIGHT\> | Focus Right Split        |
| \<leader\>R | Rotate Window Up/Left    |
| \<leader\>r | Rotate Window Down/Right |
| \<s-Right\> | Resize Split Right       |
| \<s-LEFT\>  | Resize Split Left        |
| \<s-UP\>    | Resize Split Up          |
| \<s-DOWN\>  | Resize Split Down        |

</details>

<details>
    <summary>Tabs</summary>

| Key            | Function                       |
| ---            | ---                            |
| \<M-Left\>     | Tab Previous                   |
| \<M-Right\>    | Tab Next                       |
| \<leader\>1..9 | Go To Corresponding Tab Number |
| \<leader\>0    | Tab Last                       |
| \<leader\>x    | Tab Close                      |
| \<leader\>tm   | Tab Move                       |

</details>

<details>
    <summary>FZF</summary>

| Key           | Function |
| ---           | ---      |
| \c            | Colors   |
| \<leader\>b   | Buffers  |
| \<leader\>ff  | Files    |
| \<leader\>W   | Windows  |
| \<leader\>h   | History  |
| \<leader\>hc  | History  |
| \<leader\>rg  | Ripgrep  |
| \<leader\>li  | Lines    |
| \<leader\>bli | BLines   |
| \<leader\>ma  | Marks    |
| \<leader\>sn  | Snippets |
| \<leader\>com | Commands |
| \<leader\>ag  | Ag       |
| \<leader\>tag | Tags     |

</details>

<details>
    <summary>Aligning Text</summary>

| Key | Function          |
| --- | ---               |
| \at | Tabularize Tables |
| \ta | Tabularize [char] |

</details>

<details>
    <summary>Enuch Shell Commands</summary>

| Key           | Function  |
| ---           | ---       |
| \<leader\>ch  | Chmod +x  |
| \<leader\>suw | SudoWrite |
| \<leader\>sue | SudoEdit  |
| \<leader\>rm  | Remove    |
| \<leader\>del | Delete!   |
| \<leader\>mv  | Move      |
| \<leader\>dup | Duplicate |
| \<leader\>mkd | Mkdir     |

</details>

<details>
    <summary>Floterm</summary>

| Key         | Function               |
| ---         | ---                    |
| \\t         | FloatermToggle         |
| \q         | FloatermKill           |
| \n         | FloatermNext           |
| \p         | FloatermPrev           |
| \v         | vifm Inside FloaTerm   |
| \ra        | ranger Inside FloaTerm |
| \\tr        | Terminal Right         |
| \\tb        | Terminal Bottom        |
| \rg         | Run Go In Terminal     |
| \rb         | Run Bash In Terminal   |
| \rj         | Run Nodejs In Terminal |
| \rp         | Run Python In Terminal |
| \<leader\>l | Lf                     |

</details>

<details>
    <summary>Terminal</summary>

| Key         | Function                                   |
| ---         | ---                                        |
| \<leader\>' | Vim's Terminal                             |
| \l          | Clear Terminal In the Background (For F12) |
| \<C-j\>     | Focus Bottom                               |
| \<C-k\>     | Focus Top                                  |
| \<C-DOWN\>  | Focus Bottom                               |
| \<C-UP\>    | Focus Top                                  |

</details>

<details>
    <summary>Snippets</summary>

| Key     | Function                                      |
| ---     | ---                                           |
| \<C-j\> | Expand Snippet & Jump Forward In Placeholders |
| \<C-k\> | Jump Backward In  Placeholders                |
| \<C-l\> | List Snippets                                 |

</details>

<details>
    <summary>bilingual</summary>

| Key     | Function     |
| ---     | ---          |
| \<C-p\> | SwitchKeymap |

</details>

<details>
    <summary>Unimpaired</summary>

#### Most Useful Unimpaired Mappings.<br> 
Refer to the [official guide](https://github.com/tpope/vim-unimpaired/blob/master/doc/unimpaired.txt) for more

| Key        | Function                                               |
| ---        | ---                                                    |
| [b         | :bprevious                                             |
| ]b         | :bnext                                                 |
| [B         | :bfirst                                                |
| ]B         | :blast                                                 |
| [a         | :previous                                              |
| ]a         | :next                                                  |
| [A         | :first                                                 |
| ]A         | :last                                                  |
| [\<Space\> | Add [count] blank lines above the cursor.              |
| ]\<Space\> | Add [count] blank lines below the cursor.              |
| [e         | Exchange the current line with [count] lines above it. |
| ]e         | Exchange the current line with [count] lines below it. |
</details>

<hr> 
<h3> Consider Supporting the project</h3>

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

<h1>FAQ</h1>

<h5> Whats with the name?</h5>
Woland's Vim = Wim. Get it?

<h5> What features does Wim offer? </h5>

- Maintainace, extensiblility and customizability!
- Easy tab and split navigation <br>
- Start Screen with bookmarks and file history <br>
- Beautiful built in colorschemes
- Easy completion ctags, syntax check and more <br>
- Lighline, Vim statusline <br>
  - Choices! It is all about choices <br>

<h5> Can I expect support? </h5>
Yes! Just ask and I will answer. When asking however, provide proper information so that I can help you <br>

<h5> Why didn't you use Neovim like everyone else? </h5>
Because Vim is the one I use and frankly Vim is better!

<h5> Will you make custom vimrc configurations? </h5>

[Contact me](https://t.me/inlovewithapenguin)

<h5> Are you open to collaborations? </h5>

[Contact me](https://t.me/inlovewithapenguin)

#### To Do 
- [x] Improve the rest of FloaTerm shortcuts that start with backslashes (DONE)

<!--
vim: cole=0 
-->
