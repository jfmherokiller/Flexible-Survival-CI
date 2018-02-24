#!/usr/bin/env bash
set -e

./install-inform.sh $I7_PREFIX
#replace i7 script with my edited version
curl https://gist.githubusercontent.com/jfmherokiller/e52c873a476eb1fbc9e032512e91d3e7/raw/b59f3e3e8b06cfb37d78f78787498f14bb724448/i7.pl > $I7_PREFIX/bin/i7
chmod +x $I7_PREFIX/bin/i7

cp ./FlexibleSurvival.materials/Extensions/Inform/story.ni ./FlexibleSurvival.inform/Source/story.ni
cp -r ./FlexibleSurvival.materials/Extensions/Figures ./FlexibleSurvival.materials/