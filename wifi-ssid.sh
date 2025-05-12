#!/bin/bash
####################################################################################################
#
# ABOUT
#
#   Script to determine the current Wi-Fi SSID sourced from places on the internet
#
####################################################################################################
#
# HISTORY
#
#   Version 0.0.1, 12-Sep-2024, Dan K. Snelson (@dan-snelson)
#       Original version (thanks, @BigMacAdmin and @Pico!)
#
#   Version 0.0.2, 12-Sep-2024, Dan K. Snelson (@dan-snelson)
#       Leverage Extension Attribute Frequency: https://snelson.us/2017/04/extension-attribute-frequency/
#
#   Version 0.0.3, 13-Sep-2024, Dan K. Snelson (@dan-snelson)
#       Updated to yet another Pico-authored command for SSID
#
#   Version 0.0.4, 07-Nov-2024, Dan K. Snelson (@dan-snelson)
#       Excellent find, @grahamrpugh!; thanks for the tweak, @rtrouton!
#
####################################################################################################

scriptVersion="0.0.4"

ssid=$( ipconfig getsummary $(networksetup -listallhardwareports | awk '/Hardware Port: Wi-Fi/{getline; print $2}') | awk -F ' SSID : '  '/ SSID : / {print $2}' )

echo "<result>${ssid}</result>"

exit 0
