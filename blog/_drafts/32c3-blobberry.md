---
layout: post
title: 32c3 Blobberry
comments: false
category: ctf
tags: ctf, 32c3, reversing, rpi, gpu
---

This is a write-up of the bloberry challenge from the 32c3 CTF


## The Challenge

We was given a `blobberry.img` which we could use to flash a SD card and boot on a Raspberry Pi.

This image contained a FAT file system with a file called `bootcode.bin`.


## Reversing bootcode.bin

We did a lot of research about the boot process of the Raspberry Pi,
and found that the GPU boots first on the RPi.

The GPU of the RPi is a *VideoCore 4*, and the SoC is named *BCM2835*

