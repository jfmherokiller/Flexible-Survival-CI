#!/usr/bin/env bash

#$I7_PREFIX/bin/ni -internal $I7_PREFIX/share/inform7/Internal -project FlexibleSurvival.inform -format=ulx
#$I7_PREFIX/bin/inform6 -kE2SDwG "+include_path=,.,../Source" "FlexibleSurvival.inform/Build/auto.inf" "FlexibleSurvival.inform/Build/output.ulx"

# Look for the 4 common signals that indicate this script was killed.
# If the background command was started, kill it, too.
trap '[ -z $! ] || kill $!' SIGHUP SIGINT SIGQUIT SIGTERM
$I7_PREFIX/bin/i7 -p $I7_PREFIX -r FlexibleSurvival.inform & #compile flexible survival
# The /proc directory exists while the command runs.
while [ -e /proc/$! ]; do
    echo -n "."  # Do something while the background command runs.
    sleep 1  # Optional: slow the loop so we don't use up all the dots.
done

exit $!