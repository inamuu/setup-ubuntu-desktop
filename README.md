# Overview

Setup tools for ubuntu desktop.

## Ubuntu version

- 20.10(groovy gorilla)

## Tools

- ShellScript

## Initial Setup

Install pkgs on manual.

```sh
$ sudo apt update
$ sudo apt install vim git
```

Setup config to connect github.com.

```sh
$ ssh-keygent -t rsa -b 4096
```

Go to github.com and add public key.
Next, set private key path and host settings connect github.com to your .ssh/config

```sh
$ vim ~/.ssh/config
Host github.com
  Hostname github.com
  User git
  Port 22
  IdentityFile ~/.ssh/id_rsa_ubuntu
```

Run git clone git@github.com:inamuu/dotfiles.git

