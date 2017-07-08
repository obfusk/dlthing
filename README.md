<!-- {{{1 -->

    File        : README.md
    Maintainer  : Felix C. Stegerman <flx@obfusk.net>
    Date        : 2017-07-08

    Copyright   : Copyright (C) 2017  Felix C. Stegerman
    Version     : v0.0.1

<!-- }}}1 -->

## Description

dlthing.py - youtube-dl in your browser

## Requirements

### Debian

```
apt install python3-flask youtube-dl
```

### Python 3 venv

```
apt install python3-venv  # on debian, install this first
make requirements-pip     # installs Flask and youtube_dl in .venv
```

## Run

Run by clicking on the `.desktop` file ("DL thing" in a file manager),
or run `dlthing.sh` from a terminal.

DL thing will run in a terminal (press ctrl-c to quit) and open its
web page in your browser.

## License

GPLv3+ [1].

## References

[1] GNU General Public License, version 3
--- https://www.gnu.org/licenses/gpl-3.0.html

<!-- vim: set tw=70 sw=2 sts=2 et fdm=marker : -->
