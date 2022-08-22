# dotfiles

## Overview

This repository contains scripts to set macOS.

## Required

- [macOS](https://www.apple.com/jp/macos/monterey/) - v12.5

## Install

Download installation materials.

```shell
$ cd ~ && git clone https://github.com/ysato/dotfiles
```

### Set macOS

```shell
$ cd ~/dotfiles && make

# If error occurs in "make brew"
$ source ~/.bash_profile && make brew
```

Rewrite signgingkey in [.gitconfig](.bin/.gitconfig)

### Set gpg

```shell
$ gpgconf --kill gpg-agent
$ echo "test" | gpg --clearsign
```

### Set iterm2

```
1. Press "command + ," on iterm2.
2. Click "General" tab.
3. Click "Preferences" tab.
4. Turn on "Load preference from a custom folder or URL."
5. Enter "~/dotfiles/iterm2".
```

### Set PhpStorm

```
1. Open the JetBrains Toolbox App.
2. Click the settings icon next to the PhpStorm, and select "Settings".
3. On the settings tab, expand "Configuration".
4. Specify "2250MB" in the Maximum heap size field.
```