#!/usr/bin/env bash
set -e
#$I7_PREFIX/bin/ni -internal $I7_PREFIX/share/inform7/Internal -project FlexibleSurvival.inform -format=ulx
#$I7_PREFIX/bin/inform6 -kE2SDwG "+include_path=,.,../Source" "FlexibleSurvival.inform/Build/auto.inf" "FlexibleSurvival.inform/Build/output.ulx"
$I7_PREFIX/bin/i7 -p $I7_PREFIX -r FlexibleSurvival.inform