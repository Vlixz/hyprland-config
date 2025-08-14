#!/bin/bash

# Switch over to HDMI-A-1 to use as screen for steam streaming to TV.

cp ~/dotfiles/.config/hypr/configs/monitors_hdmi_mode.conf ~/dotfiles/.config/hypr/configs/monitors_current.conf
hyprctl reload

sleep 2

steam --enable-gpu --enable-features=VaapiVideoDecoder --disable-gpu-sandbox

#env WLR_OUTPUT=HDMI-A-1 steam -bigpicture -force_hardware_vsyn --enable-features=VaapiVideoDecoderc

cp ~/dotfiles/.config/hypr/configs/monitors_default.conf ~/dotfiles/.config/hypr/configs/monitors_current.conf
hyprctl reload
