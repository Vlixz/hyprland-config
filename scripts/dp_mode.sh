#!/bin/bash

# Revert back to using the default monitor config.

cp ~/dotfiles/.config/hypr/configs/monitors_default.conf ~/dotfiles/.config/hypr/configs/monitors_current.conf
hyprctl reload
