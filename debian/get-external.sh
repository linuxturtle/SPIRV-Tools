#!/bin/sh
wget https://github.com/KhronosGroup/SPIRV-Headers/archive/HEAD.tar.gz -O spirv-headers.tar.gz
mkdir -p external/SPIRV-Headers
tar xf spirv-headers.tar.gz -C external/SPIRV-Headers --strip 1

# clean
rm spirv-headers.tar.gz

git add -f external/
git commit -m "Refresh external/
spirv-headers: HEAD
Vcs-Browser: https://github.com/KhronosGroup/SPIRV-Headers/commits/HEAD"

echo "\nRemember to check if this commit looks sane!"
