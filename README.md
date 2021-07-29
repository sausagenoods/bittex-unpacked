# Bittex Core Malware/Scam

## Introduction

This is an ongoing Telegram scam where scammers pretend to have accidentally sent their wallet seed and account information.

![Telegram message](https://github.com/sausagenoods/bittex-unpacked/raw/master/misc/img/telegram.jpg)

Their goal is to infect people with the third wallet option.

* [Bittex repository.](https://github.com/corewallet/bittex)
* [My fork in case the original gets deleted.](https://github.com/sausagenoods/bittex)

The repository and the account owning it were created only 2 days ago from when one of my friends received a message from their scammers. It currently consists of a single file, README.md, which has been edited several times to make commits appear more realistic.

## Unpacking
Advanced Installer was used to package the setup executable. Unpacking it was possible using [UniExtract2](https://github.com/Bioruebe/UniExtract2).

It contains several batch files that modify registry keys, attempt to download a Chinese RAT and in general try to hide itself better. However, it doesn't work to its full extend due to someone hardcoding their user directory and several endpoints being down.

## External

It tries to download the following files:

* http://updateme.solutions/download/setup.exe
* http://updateme.solutions/bat1/Desktop.bat
* http://updateme.solutions/fk/ruliserv.exe
* http://updateme.solutions/fk/rustclient.exe

At the time, only setup.exe is available for download. Windows Defender is able to detect it but if you run it anyway, it will setup a Chinese remote access tool.

![RAT](https://github.com/sausagenoods/bittex-unpacked/raw/master/misc/img/rat.png)

## Misc

This directory contains screenshots and information about the mentioned domains. The domains are also new and have the same registrar.
