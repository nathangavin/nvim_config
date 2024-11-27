# What is this?

this is a repository which contains my config file s for neovim.

to work in wsl regarding clipboard, follow instructions here for installing win32yank.
```

curl -sLo/tmp/win32yank.zip https://github.com/equalsraf/win32yank/releases/download/v0.1.1/win32yank-x64.zip
unzip -p /tmp/win32yank.zip win32yank.exe > /tmp/win32yank.exe
chmod +x /tmp/win32yank.exe
sudo mv /tmp/win32yank.exe /usr/local/bin/
```
https://stackoverflow.com/questions/75548458/copy-into-system-clipboard-from-neovim

Note: to remove shfmt from auto installing and messing up formatting, go to:
~/.local/share/nvim/lazy/LazyVim/lua/lazyvim/plugins/lsp/init.lua 
and search for `shfmt`, then remove that line.

After that, open up neovim and run the command ':MasonUninstall shfmt'

TODO: Rewrite everything below as its no longer accurate

Neovim v0.9+ is required, as this config setup requires full Lua support, with no vimscript being used. 

# installing neovim

Currently at time of writing, the package manager in debian will not install a 
new enough version of neovim, currently only installing v0.4.4. We require v0.9
at least. To install v0.9, follow these steps:

1. download the tar.gz file from the neovim github page
2. put the file into the wsl file system via windows file explorer
3. move the file into a directory which already exists in the path (I used /usr/local/bin, the tutorial I followed used ~/.local/bin)
4. extract the file using command `tar xzvf <filename>` - note depending on location, you may need to do sudo on every command
5. delete tar.gz file
6. create a symbolic link to the nvim executable in the new nvim folder, using command `ln -s /nvim-<version>/bin/nvim ./nvim` - this creates a link called nvim which links to the executable
7. run nvim in command line, and you should be good to go.

# Prerequisites

You need to download and install packer.nvim, the shell command for installing can be found on the 
packer.nvim github page, and at the time of writing is :

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.neovim

You will also need at least rust installed, and probably node via npm aswell. Use the following command to install rust, or look it up:

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# next steps

Go into directory, and go straight to /lua/nathan/packer.lua, go into file, do :so, then do :PackerSync to install packages


# Available Instructions which I have added

| Command | Description | Native vim command (optional) |
|---|---|---|
|space-pv| Open file explorer | :Ex |
|space-pf| Find files | |
|space-ps| Search files by String with Grep | |
|<C - p> | Find files in current git repository | |
|space-a| Add file to harpoon quick menu | |
|<C - e>| open harpoon quick menu ||
|<C - h,t,n,s>| quick jump to file 1,2,3,4 in harpoon menu respectively | |
|space-u| Show undo tree - branches | |
|space-gs| get git status of current directory | |
|<C - p>| in files with a valid LSP, select the previous option in the list ||
|<C - n>| in files with a valid LSP, select the next option in the list ||
|<C - y>| in LSP menu, accept selected option ||
|<C - space>| complete in LSP (not really sure) ||
