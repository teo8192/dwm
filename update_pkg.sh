#!/bin/sh

build=/home/teo/tmp/pkgbuild
repo=/home/teo/custom_repo

mkdir -p ${build}
cp PKGBUILD ${build}
cd ${build}

makepkg
pkg=$(find dwm-git*.tar.zst)
cp ${pkg} ${repo}
repo-add -R ${repo}/custom.db.tar.gz  ${repo}/${pkg}
cd -
rm -rf ${build}
