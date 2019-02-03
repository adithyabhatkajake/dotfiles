#!/bin/bash

cd ~/GitRoot/
git clone "$QUTE_SELECTED_TEXT"
if [ $? -eq 0 ];then
    echo "message-info Success!" >> $QUTE_FIFO
else
    echo "message-error Failed!" >> $QUTE_FIFO
fi
