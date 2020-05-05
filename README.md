# Dotfiles
Desktop Dotfiles Repo
+ **OS**:              Arch Linux x86_64
+ **Shell**:           ZSH
+ **Terminal**:        [Tilix](https://github.com/gnunn1/tilix) _with_ [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
+ **Windows Manager**: [13-Gaps-Rounded](https://github.com/resloved/i3)
+ **Theme**:           [Nordic](https://github.com/EliverLara/Nordic)
+ **Colors**:          [Dracula](https://github.com/dracula/dracula-theme)
+ **Tilix theme**:     [Dracula](https://github.com/dracula/tilix)
+ **Icons**            [Paper](https://snwh.org/paper)


## Dotfiles for:
| Dependency | Description | Source
| ---- | ---- | ---- |
| [**i3-Gaps-Rounded**](https://github.com/resloved/i3) | Windows Manager, fork of i3-Gaps | [Github](https://github.com/Airblader/i3)
[**Polybar**](https://github.com/Brutuski/DesktopDotfiles/tree/master/.config/polybar)| For Statusbar config  | [Github](https://github.com/polybar/polybar)
[**Ranger**](https://github.com/Brutuski/DesktopDotfiles/tree/master/.config/ranger) | Terminal based file manager with vim keybindings |  [Github](https://github.com/davatorium/rofi)
[**Rofi**](https://github.com/Brutuski/DesktopDotfiles/tree/master/.config/rofi)  | Appliation launcher and much more. Fully configurable |  [Github](https://github.com/ranger/ranger)
[**Dunst**](https://github.com/Brutuski/DesktopDotfiles/tree/master/.config/dunst) | Notifications daemon. Extremely configurable and lightweight |  [Github](https://github.com/dunst-project/dunst)
[**Vim**](https://github.com/Brutuski/Dotfiles/blob/master/.vimrc) | Preferred Editor. Endless plugins and supports every kind of programing & markdown language. Available on every OS. | [Github](https://github.com/vim/vim)
[**Zathura**](https://github.com/Brutuski/DesktopDotfiles/tree/master/.config/zathura) | Lightweight PDF reader with a focus on reading. Vim keybindings support  |  [Github](https://github.com/pwmt/zathura)


### Fonts
#### System Font
+ [**Hack Nerd Mono**](https://github.com/ryanoasis/nerd-fonts)
#### Icon Font (for Polybar)
+ [**Wuncon Siji**](https://github.com/stark/siji)


### Basic Keybindings
| Key Combination | Function |
| ---- | ---- |
| `alt` | mod in i3 |
| `win` | sup in i3 |
| `win+space` | Toggle between US and DE lamguage input |

| Key Combination | Function |
| ---- | ---- |
| `mod+return` | tilix |
| `mod+t` | TexStudio |
| `mod+z` | Zathura PDF |
| `mod+d` | Rofi drun |
| `sup+w` | Rofi window changer |

| Key Combination | Function |
| ---- | ---- |
| `mod+control+k` | Backlight +10 |
| `mod+control+j` | Backlight -10 |
| `mod+F1` | Lock Screen |
| `mod+r` | Reload i3 config |
| `mod+num` | Move to corresponding Workspace |
| `Print` | Screenshot |


## Basic Guidelines for setup
+ Install i3-Gaps, from [AUR](https://www.archlinux.org/packages/community/x86_64/i3-gaps/) for example. Go through basic setup as prompted.
+ i3 config goes to `~/.config/i3/config`. Replace the config with the one in the repo here. For further options refer to the [official docs](https://i3wm.org/docs/userguide.html).
+ Install Polybar, from [AUR](https://aur.archlinux.org/packages/polybar/). All configs and scripts for Polybar are places in `~/.config/polybar/`. Polybar is launched using launch.sh script executed by i3 config on startup.
+ [Feh](https://wiki.archlinux.org/index.php/Feh) is used to set the wallpaper on startup. Executed by i3 on config on startup as well. Installed via [AUR](https://www.archlinux.org/packages/extra/x86_64/feh/).
+ Screen lock setup using [i3lock](https://i3wm.org/i3lock/). Installed via [AUR](https://www.archlinux.org/packages/community/x86_64/i3lock/).


## Screenshots
+ Taken using [Scrot](https://github.com/resurrecting-open-source-projects/scrot). _Print_ Key is mapped in the i3 config to execute scrot command. Installed via [AUR](https://www.archlinux.org/packages/community/x86_64/scrot/). [Wallpaper Source](https://www.artstation.com/artwork/mQLe1).

Desktop ![Screenshot](https://github.com/Brutuski/Dotfiles/blob/master/Screenshots/Desktop.png)
Powermenu ![Screenshot](https://github.com/Brutuski/Dotfiles/blob/master/Screenshots/Powermenu.png)
Ufetch ![Screenshot](https://github.com/Brutuski/Dotfiles/blob/master/Screenshots/ufetch.png)
Rofi ![Screenshot](https://github.com/Brutuski/Dotfiles/blob/master/Screenshots/Rofi.png)
Vim ![Screenshot](https://github.com/Brutuski/Dotfiles/blob/master/Screenshots/Vimi3config.png)
Tilix tabs ![Screenshot](https://github.com/Brutuski/Dotfiles/blob/master/Screenshots/vim%2Bgotop%2Bvimrc.png)
