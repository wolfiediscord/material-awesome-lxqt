## Material and Mouse driven theme for [AwesomeWM 4.3](https://awesomewm.org/)
### Original work by PapyElGringo, official development seem to have moved to [material-shell](https://github.com/PapyElGringo/material-shell)
### Fork from ChrisTitusTech

Note: This fork changes some defaults and runs well on Lubuntu 20.04 or LXQT based distros. We use some of the applications from LXQT here.

An almost desktop environment made with [AwesomeWM](https://awesomewm.org/) following the [Material Design guidelines](https://material.io) with a performant opiniated mouse/keyboard workflow to increase daily productivity and comfort.

[![](./theme/PapyElGringo-theme/demo.gif?raw=true)](https://www.reddit.com/r/unixporn/comments/anp51q/awesome_material_awesome_workflow/)
*[Click to view in high quality](https://www.reddit.com/r/unixporn/comments/anp51q/awesome_material_awesome_workflow/)*

| Tiled         | Panel         | Exit screen   |
|:-------------:|:-------------:|:-------------:|
|![](https://i.imgur.com/fELCtep.png)|![](https://i.imgur.com/7IthpQS.png)|![](https://i.imgur.com/rcKOLYQ.png)|

## Installation

### 1) Get all the dependencies

#### Debian-Based

```
sudo add-apt-repository ppa:regolith-linux/unstable -y
sudo apt install awesome fonts-roboto rofi picom xscreensaver qt5-style-plugins materia-gtk-theme lxappearance light flameshot pcmanfm-qt lxqt-powermanager pnmixer nm-applet lxqt-policykit redshift-gtk -y
wget -qO- https://git.io/papirus-icon-theme-install | sh
```

*Note: PPA is for picom since compton is old and hasn't been updated*

#### Arch-Based

```
yay -S awesome rofi picom xscreensaver ttf-roboto lxqt-policykit materia-gtk-theme lxappearance flameshot pnmixer nm-applet lxqt-powermanager redshift-gtk -y
wget -qO- https://git.io/papirus-icon-theme-install | sh
```

#### Program list

- [AwesomeWM](https://awesomewm.org/) as the window manager - universal package install: awesome
- [Roboto](https://fonts.google.com/specimen/Roboto) as the **font** - Debian: fonts-roboto Arch: ttf-roboto
- [Rofi](https://github.com/DaveDavenport/rofi) for the app launcher - universal install: rofi
- [picom](https://github.com/yshui/picom) for the compositor (blur and animations) universal install: picom - Debian users need PPA (`sudo add-apt-repository ppa:regolith-linux/unstable`)
- [xscreensaver](https://www.jwz.org/xscreensaver/) the lockscreen application universal install: xscreensaver
- [lxqt-policykit] recommend using the lxqt-policykit as it integrates nicely for elevating programs that need root access and comes with LXQT
- [Materia](https://github.com/nana-4/materia-theme) as GTK theme - Arch Install: materia-theme debian: materia-gtk-theme
- [Papirus Dark](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme) as icon theme Universal Install: wget -qO- https://git.io/papirus-icon-theme-install | sh
- [lxappearance](https://sourceforge.net/projects/lxde/files/LXAppearance/) to set up the gtk and icon theme
- (Laptop) [light](https://github.com/haikarainen/light) for adjusting brightness on laptops (disabled by default)
- [flameshot](https://flameshot.js.org/#/) my personal screenshot utility of choice, can be replaced by whichever you want, just remember to edit the apps.lua file
- [pnmixer](https://github.com/nicklan/pnmixer) Audio Tray icon that is in debian repositories and is easily installed on arch through AUR.
- [nm-applet](https://github.com/palinek/nm-tray) nm-applet is a Network Manager Tray display using QT.
- [lxqt-powermanagement](https://github.com/lxqt/lxqt-powermanagement) LXQT's power manager is excellent and a great way of dealing with sleep, monitor timeout, and other power management features.
- [redshift-gtk](http://jonls.dk/redshift/) My perferred blue light reducer. Feel free to replace with your own, just make sure to edit the apps.lua file 

### 2) Clone the configuration

```
git clone https://github.com/wolfiediscord/material-awesome-lxqt.git ~/.config/awesome
```

### 3) Set the themes

Start `lxappearance` to active the **icon** theme and **GTK** theme
Note: for cursor theme, edit `~/.icons/default/index.theme` and `~/.config/gtk3-0/settings.ini`, for the change to also show up in applications run as root, copy the 2 files over to their respective place in `/root`.

### 4) Same theme for Qt/KDE applications and GTK applications, and fix missing indicators

First install `qt5-style-plugins` (debian) | `qt5-styleplugins` (arch) and add this to the bottom of your `/etc/environment`

```bash
XDG_CURRENT_DESKTOP=Unity
QT_QPA_PLATFORMTHEME=gtk2
```

The first variable fixes most indicators (especially electron based ones!), the second tells Qt and KDE applications to use your gtk2 theme set through lxappearance.

### 5) Read the documentation

The documentation live within the source code.

The project is split in functional directories and in each of them there is a readme where you can get additional information about the them.

* [Configuration](./configuration) is about all the **settings** available
* [Layout](./layout) hold the **disposition** of all the widgets
* [Module](./module) contain all the **features** available
* [Theme](./theme) hold all the **aesthetic** aspects
* [Widget](./widget) contain all the **widgets** available
