super_unko
===========================================
[![License](https://img.shields.io/badge/license-%F0%9F%92%A9-orange.svg)](./LICENSE)
[![Build Status](https://travis-ci.org/unkontributors/super_unko.svg?branch=master)](https://travis-ci.org/unkontributors/super_unko)

super_unko project is the one of the awesome, clean and sophisticated OSS project in the world.
Let's create shit commands!

super_unko プロジェクトは世界で最もクリーンで洗練されたOSSプロジェクトの一つです。
うんこなコマンドを作りましょう。

| Command       | Description |
|---------------|-------------|
| super_unko    | Controles sub unkommands |
| unko.tr       | Convert various expressions equals to shit into 💩 (shit). |
| unko.ls       | Shows various shit expression. |
| unko.yes      | Generate 💩 shit forever. |
| unko.tower    | Build your shit tower. |
| bigunko.show  | Big shit. |
| unko.printpnm | Generate 💩 PNM image file. |
| unko.puzzle   | Sliding block puzzle. |
| unko.toilet   | Display large 💩 characters. |
| unko.grep     | Print lines matching a 💩 pattern. |
| unko.say      | King 💩 says a message. |
| unko.shout    | King 💩 shouts a message. |
| unko.think    | King 💩 thinks something. |
| unko.life     | Play 💩's game of life. |
| unko.any      | Simple wrapper to 💩 substitution for unko.shout. |
| unko.date     | TBD |
| unko.awk      | TBD |
| unko.xargs    | TBD |

Installation
========================

### Linux

#### With `yum` (RHEL compatible distros)

```
$ sudo yum install https://git.io/superunko.rpm
```

Uninstall (not `super_unko`)

```
$ sudo yum remove superunko
```


#### With `apt` (Debian base distros)

```
$ wget https://git.io/superunko.deb
$ sudo dpkg -i ./superunko.deb
```

Uninstall (not `super_unko`)

```
$ sudo apt remove superunko
```

#### With AUR (ArchLinux base distros)

You can install `super_unko` from https://aur.archlinux.org/packages/super_unko-git/ with your favorite aur helper.

e.g. with yay:

```
$ yay -S super_unko-git
```

Uninstall (not `super_unko`)

```
$ sudo pacman -R super_unko-git
```

### macOS

* With Homebrew

```
$ brew tap unkontributors/unko
$ brew install super_unko
```

Uninstall

```
$ brew remove super_unko
```


### Docker

* With docker

```bash
$ git clone https://github.com/unkontributors/super_unko.git
$ cd super_unko
$ docker build -t superunko .
$ docker run -it superunko unko.shout こんにちは
```

### Zsh plugin manager

Zsh plugin managers like [antigen](https://github.com/zsh-users/antigen), [zplug](https://github.com/zplug/zplug) can be adoptive.
Not only commands can be used but also [`command_not_found_handler`](https://github.com/zsh-users/zsh/blob/master/README#L249) is updated.
It is extremely helpful for developers.

* Example of antigen

```
antigen bundle "unkontributors/super_unko"
```

### Additional Installation

- [unko.puzzle](./doc/unko.puzzle.md)
- unko.shout - Need a [echo-sd](https://github.com/fumiyas/home-commands) command
- unko.say - Need a `cowsay` command (`$ apt install cowsay`)
- unko.think - Need a `cowthink` command (`$ apt install cowsay`)
- unko.toilet - Need a `toilet` command (`$ apt install toilet`)

Usage
========================

```
$ echo "うんこ" | unko.tr
💩

$ echo "うんち" | unko.tr
💩

$ ./unko.yes
💩
💩
💩
💩
💩
💩
💩
...
```

Testing
========================

We use the [bats](https://github.com/sstephenson/bats) testing framework.
Please you install that.

Run below.

```bash
./test.sh
```

Contribution
========================
Welcome! Welcome!

LICENSE
==============
💩 LICENSE
 (Something like BSD license)

History
==============

* [シェル芸勉強会中に爆誕したsuper_unkoリポジトリを巡る悲喜交々 - Togetter](https://togetter.com/li/1144376)
* [【まとめたくない】super_unkoリポジトリがスクスク成長【義務感】 - Togetter](https://togetter.com/li/1145304)

For Unkontributors (開発者向け)
========================
bin 以下になんか思いついたコマンドを放り投げてください。
決まったルールとか運用は特に無いです。
docker が入った環境で `bash package.sh` すると pkg 以下に各種インストーラーが作成されることだけ知っておいてください。
