#!/bin/bash
i3-msg "append_layout ~/dotfiles/scripts/edit.json"
(urxvt &)
evince &
