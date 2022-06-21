# Wim
This is a Vim configuration that gets you a smilar experience as spacevim but without it acting like a parasite and sitting on top of your existing Vim. Its made on top of the vanilla Vim with the help of plugins and .vimrc configurations. You will never have to run that horrible curl command again!
# Dependencies
- Vim 8
- [vimplug](https://github.com/junegunn/vim-plug)
- nodejs and npm

<h1>Usage</h1>

- Place the .vimrc file in your home directory<br>
- You can rename your already existing .vimrc or move it to another directory. this way; you can always bring it back if you dont like Wim<br>
- Open Vim from the terminal and get into cmd mode by pressing :<br>
- Run <code> :PlugInstall </code><br>
- Refer to the [list](https://github.com/neoclide/coc.nvim/wiki/Language-servers) of autocompletion languages and add the ones you'd like with 
- <code> :CocInstall </code><br>
  	- Example: <code>:CocInstall coc-css</code> <br>
  
 - Once the downloads are finished you can start using Vim normally<br>
 - Leader key is naturally space<br>
- Press space h to view a list of leader key bindings<br>
<h4>Optional Dependencies </h4>

- Ranger. See [mine](https://github.com/wolandark/ranger) <br>
- Vifm<br>
- FZF<br>
- Fonts with Powerline and Nerd support<br>

<h4> Notice </h4>

- You can review the list of plugins and comment out or delete the lines about the one you dont want. This must be done before running <code>:PlugInstall</code>
  - If you want to delete any plugins later, delete the lines about them and run: <code>:PlugClean</code>
<h1>FAQ</h1>

<h5> Whats with the name?</h5>
Woland's Vim = Wim. Get it?

<h5> Why do you hate spacevim?</h5>
I don't! In fact I find it amazing if it wasnt for the fact that the installation is done through a curl command and that I'll lose my regular vim hence why I call spacevim a parasite!<br>
<h5> What features does Wim offer? </h5>

- Fixed shared clipboard with desktop and other other apps<br>
- Customizability! It is lightweight and extensible without having to learn a whole new software  <br>
- Easy tab and split navigation <br>
- Complete Markdown and HTML-CSS-JS with live servers for both of them <br>
- Start Screen with bookmarks and file history <br>
- Beautiful built in colorschemes
- Easy syntax and alignment with Beautify option  <br>
- Two options for status bar. Lighline and Airline. The choice is yours! <br>
  - Choices! It is all about choices <br>


<h5> Can I expect support? </h5>
Yes! Just ask and I will answer. <br>

<h5> Why didn't you use Neovim like everyone else? </h5>
Because thats the one I use and frankly Vim is fine.

<h5>But vimplug is installed with curl too!</h5>

Yes! and it does only one thing, adding an easier integration for installing plugins. spacevim's curl writes a lot of files across your system and renames or moves the others!Plus the uninstallation takes another curl command that is not stated in spacevim's website and even after you find the commad it will leave all its files behind! With Wim, if you hate it, just remove the plugins and delete my vimrc. Takes a second! <br>

<img src="https://github.com/wolandark/backspacevim/blob/main/win2.png">
<img src="https://github.com/wolandark/backspacevim/blob/main/wim4.png">
<img src="https://github.com/wolandark/backspacevim/blob/main/vim5.png">
<img src="https://github.com/wolandark/backspacevim/blob/main/wim3.png">
<img src="https://github.com/wolandark/backspacevim/blob/main/wim1.png">
<img src="https://github.com/wolandark/backspacevim/blob/main/wim6.png">
<img src="https://github.com/wolandark/backspacevim/blob/main/wim7.png">

