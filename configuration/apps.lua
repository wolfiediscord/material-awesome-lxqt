local filesystem = require('gears.filesystem')

-- Thanks to jo148 on github for making rofi dpi aware!
local with_dpi = require('beautiful').xresources.apply_dpi
local get_dpi = require('beautiful').xresources.get_dpi
local rofi_command = 'env /usr/bin/rofi -dpi ' .. get_dpi() .. ' -width ' .. with_dpi(400) .. ' -show drun -theme ' .. filesystem.get_configuration_dir() .. '/configuration/rofi.rasi -run-command "/bin/bash -c -i \'shopt -s expand_aliases; {cmd}\'"'

return {
  -- List of apps to start by default on some actions
  default = {
    terminal = 'terminator',
    rofi = rofi_command,
    lock = 'xscreensaver-command --lock',
    quake = 'terminator',
    screenshot = 'flameshot full -p ~/Pictures',
    region_screenshot = 'flameshot gui -p ~/Pictures',
    delayed_screenshot = 'flameshot full -p ~/Pictures -d 5000',
    browser = 'firefox-esr', -- using firefox-esr because new firefox sucks as of 9/10/2020
    editor = 'featherpad', -- gui text editor
    social = 'discord',
    game = rofi_command,
    files = 'pcmanfm-qt',
    music = rofi_command 
  },
  -- List of apps to start once on start-up
  run_on_start_up = {
    'nm-applet', -- wifi
    'pnmixer', -- shows an audiocontrol applet in systray when installed.
    --'blueberry-tray', -- Bluetooth tray icon
    -- 'numlockx on', -- enable numlock
    'redshift-gtk',
    'lxqt-policykit-agent', -- credential manager
    'lxqt-powermanagement', -- Power manager
    'slimbookbattery', -- tlp assistant
    'compton', -- transparency
    'xinput set-prop "appletouch" "libinput Tapping Enabled" 1', --add tap to click functionality
    'xscreensaver', -- screensaver and locking functionality
    -- 'flameshot',
    -- 'synology-drive -minimized',
    -- 'steam -silent',
    -- '/usr/bin/barrier',
    -- '~/.local/bin/wallpaper', -- wallpaper-reddit script
    -- Add applications that need to be killed between reloads
    -- to avoid multipled instances, inside the awspawn script
    '~/.config/awesome/configuration/awspawn' -- Spawn "dirty" apps that can linger between sessions
  }
}
