super_unko
===========================================
[![License](https://img.shields.io/badge/license-%F0%9F%92%A9-orange.svg)](./LICENSE)
[![Build Status](https://travis-ci.org/greymd/super_unko.svg?branch=master)](https://travis-ci.org/greymd/super_unko)

super_unko project is the one of the awesome, clean and sophisticated OSS project in the world.
Let's us create shit commands.

super_unko プロジェクトは世界で最もクリーンで洗練されたOSSプロジェクトの一つです。
うんこなコマンドを作りましょう。

```
unko.tr  -- Convert various expressions equals to shit into 💩 (shit).
unko.ls  -- Shows various shit expression.
unko.yes -- Generate 💩 shit forever.
unko.tower -- Buid your shit tower.
bigunko.show -- Big shit.
unko.grep -- TBD
unko.date -- TBD
unko.awk -- TBD
unko.xargs -- TBD
```

Installation
========================

### Linux

* With `yum` (RHEL compatible distros)

```
$ sudo yum install https://git.io/super_unko.rpm
```

* With `apt` (Debian base distros)

```
$ sudo yum install https://git.io/super_unko.deb
```


### macOS

* With Homebrew

```
$ brew tap greymd/tools
$ brew install super_unko
```


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

Contribution
========================
Welcome! Welcome!

LICENSE
==============
💩 LICENSE
 (Something like BSD license)

<!--
Generate packages
==============
tar zcvf super_unko.tar.gz -C "$PWD" bin .tar2package.yml \
 && docker run -i greymd/tar2rpm < super_unko.tar.gz > pkg/super_unko.rpm \
 && docker run -i greymd/tar2deb < super_unko.tar.gz > pkg/super_unko.deb \
 && rm super_unko.tar.gz
-->
