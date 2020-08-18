#!/bin/sh

build=/home/teo/tmp/pkgbuild
repo=/home/teo/custom_repo

mkdir -p ${build}
cp PKGBUILD ${build}
cd ${build}

makepkg
cp dwm-git*.tar.gz ${repo}
repo-add ${repo}/custom.db.tar.gz dwm-git*.tar.gz
