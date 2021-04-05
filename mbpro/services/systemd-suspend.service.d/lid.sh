#!/bin/bash

# wakeup state
grep -qE '^LID0.*enabled' /proc/acpi/wakeup
WAKEUP=$?

grep -qE '^XHC1.*enabled' /proc/acpi/wakeup
WAKEUPXHC=$?

# lid state
grep -qE '^state: *open$' /proc/acpi/button/lid/LID0/state
LID=$?

case $1 in
    "prepare")
        # if wakeup on and lid open OR wakeup off and lid closed
        [ $(( $WAKEUP ^ $LID )) -eq 0 ] && echo LID0 > /proc/acpi/wakeup
        [ $WAKEUPXHC -eq 0 ] && echo XHC1 > /proc/acpi/wakeup
        ;;
    "restore")
        # if lid open and wakeup off
        [[ $WAKEUP -eq 1 && $LID -eq 0 ]] && echo LID0 > /proc/acpi/wakeup
        ;;
    *)
        exit 2
        ;;
esac

exit 0

