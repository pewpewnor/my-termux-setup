# My Termux Setup

## Download Termux
You can download from F-droid: https://f-droid.org/packages/com.termux/
Termux is no longer available from the Play Store

## Update
```sh
pkg update && pkg upgrade
```

## Setup
```sh
termux-setup-storage
```
You will then be prompted to "Allow Termux access photos, media and files on your device", which you should allow.<br>
This will create a folder called `storage` inside of your home directory which will grant you access to your Android's files.<br>
Sauce: https://wiki.termux.com/wiki/Internal_and_external_storage

```sh
termux-change-repo
```
Pick `Mirror Group` > `All mirrors in the world`<br>
Sauce: https://github.com/termux/termux-packages/wiki/Mirrors

## Install Important Stuff

```sh
pkg i termux-exec -y
```
Run files that contains shebangs like `#!/bin/bash` or `#!/bin/python3`<br>
Sauce: https://wiki.termux.com/wiki/Termux-exec

```sh
pkg i proot -y
```
User-space implementation of `chroot`<br>
Sauce: https://wiki.termux.com/wiki/PRoot

## Install Packages (optional)

### Common
```
pkg i -y netcat-openbsd socat curl wget grep htop man nano vim zip unzip tar git tree
```

### Programming languages
```
pkg i -y clang python nodejs golang
```
You can also install `nodejs-lts` for lts version

- Required packages for python development
```
pkg i -y clang libffi openssl
```

- Pip packages
```
pip install --upgrade pip setuptools
pip install requests
pip install httpie
```

- PHP and composer
```sh
pkg i -y php
curl -sS https://getcomposer.org/installer | php -- --install-dir=/data/data/com.termux/files/usr/bin --filename=composer
```

### Fun
```sh
pkg i -y figlet cowsay neofetch
```

### Others
- ytdl
```
curl -sL https://gist.githubusercontent.com/santhoshkumar/48dad71342f8dc68029b5d5f33504302/raw/13d40d51dd45597f2b74b30361c642f3e56ed187/package.sh | bash
```

## Clean
```sh
pkg autoclean & pkg clean
```

## Customization

- Zsh (Use bash instead since ZSH doesn't show path in the prompt by default, trust me)
```
pkg i -y zsh
chsh -s
```
Then type in 'zsh' for the input, then press ENTER.<br>
Exit and open the app again to use ZSH.

- Add extra key rows
```sh
cd .termux
nano termux.properties
```
Copy paste the following lines to the file.
Note: you cannot add '\'
```sh
extra-keys = [ \
 ['ESC','|',':','HOME','UP','END','DEL'], \
 ['TAB','CTRL','ALT','LEFT','DOWN','RIGHT','BKSP'] \
]
```
Then reload termux settings:
```sh
termux-reload-settings
```
