# Development Branch of Wim
### Testing
<strong>Backup your ~/.vim and ~/.vimrc</strong>
```
mv ~/.vim{,-bk} ; mv ~/.vimrc{,-bk}
```
Install nodejs, npm, yarn and curl. <br>
rename and move `newRelease` to `~/.vimrc` and start vim normally.

# Installation 
## Vim 
<strong>Backup your ~/.vim and ~/.vimrc</strong>

```
mv ~/.vim{,-bk} ; mv ~/.vimrc{,-bk}
git clone URL
cp wim/wim-vim ~/.vimrc 
vim
```

## Neovim
<strong>Backup your ~/.config/nvim and ~/.local/share/nvim</strong>

```
mv ~/.config/nvim/{,-bk} ; mv ~/.local/share/nvim{,-bk}
[[ ! -d ~/.config/nvim ]] && mkdir -p ~/.config/nvim/

git clone URL
cp wim/wim-neovim ~/.config/nvim/init.vim
nvim
```

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

#### To Do 
- [x] Improve the rest of FloaTerm shortcuts that start with backslashes (DONE)
