# dotfiles

Inspired by https://github.com/mathiasbynens/dotfiles and https://github.com/pawelgrzybek/dotfiles

## `brew`

https://brew.sh/

    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## `omyzsh`

https://ohmyz.sh/

    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## `git`

    brew install git

Add user info globally (optional):

    git config --global user.name "Your Name"
    git config --global user.email "your@email.com"

## `.dotfiles`

    cd ~
    git clone https://github.com/krigersergei/.dotfiles
    cd .dotfiles

## `.nvm`

https://github.com/nvm-sh/nvm

> Don't use `brew` to install `nvm`. Read more [here](https://github.com/nvm-sh/nvm#important-notes).

https://github.com/lukechilds/zsh-nvm#as-an-oh-my-zsh-custom-plugin

Clone `zsh-nvm` into your custom plugins repo:

    git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm

Then load as a plugin in your `.zshrc`:

    plugins=(... zsh-nvm)

Now add these lines to your `~/.bashrc`, `~/.profile`, or `~/.zshrc` file to have it automatically sourced upon login: (you may have to add to more than one of the above files)

    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

## Install

> Make sure to comment/uncomment apps you need before installation.
> Some macOS changes may require restart your machine after a setup.

    source start.sh

## `ssh`

- https://help.github.com/en/articles/connecting-to-github-with-ssh
- https://gist.github.com/jexchan/2351996

## Additional apps (optional)

* Monosnap
* 1Password

### VirtualBox

https://www.virtualbox.org/wiki/Downloads

* Install `OS X hosts`
* Install `VirtualBox Extension Pack`
* Download Windows version you need from https://developer.microsoft.com/en-us/microsoft-edge/tools/vms/
* Install downloaded version to VirtualBox
* Before start select installed Windows image, go to settings and update following fields:
  - Set _Display > Screen > Video Memory_ to at least minimum required for the amount of monitors
  - Set _Display > Screen > Graphics Controller_ to `VBoxSVGA`
  - On _Storage > Storage Devices_ select _Controller: IDE Controller_ and click an icon _+_ icon.
  - Choole _Optical Drive_
  - In the dialog window select _VBoxGuestAdditions.iso_ and click _Choose_
  - In _Generas > Advanced_ select _Bidirectional_ for both _Shared Clipboard_ and _Drag'n'Drop_
* If on Windos start you may be asked to enter the password, enter `Passw0rd!` (default for VirtualBox)
* After a start open _File Explorer_, select _This PC_ and double click on _VirtualBox Guest Additions_ drive.
* Execute _VBoxWindowsAdditions.exe_ and follow instructions
* Choose _Reboot Now_
* After a start follow instructions on the wallpaper to activate Windows version.
* If Windows interfaces are to small (happens on new MacBooks), go to _Display_ and change _Scale Factor_ to _200%_
* Optional:
  - Remove login password
  - Set blank start page to browser
  - Prevent browser save passwords
  - Enable 3d Acceleration
  - Enable audio input/output

### Docker

https://docs.docker.com/docker-for-mac/install/

#### Autocompletion with `oh-my-zsh`

Add `docker` and `docker-compose` to the plugins list in `~/.zshrc` to run autocompletion within the `oh-my-zsh` shell. In the following example, `...` represent other Zsh plugins you may have installed.

    plugins=(... docker docker-compose)

`source ~/.zshrc` or restart your terminal.

## Do stuff manually (optional)

* Keyboard > Modifier Keys... > Caps Lock to Control
* Keyboard > Customise Control Strip... > Remove Siri, Add Lock
* Desktop & Screen Saver > Start After > 10 minutes
* Energy Saver > Battery > 10 minutes
* Energy Saver > Power Adapter > 10 minutes
* Security & Privacy > General > Require Password: check > 5 minutes
* Organise Dock
* Browsers
  * Ask before save
  * Prevent autofill/save passwords
  * Extensions (uBlock, 1Password, JSON Viewer, React Dev Tools, Redux Dev Tools)
* Spectable
  * Change `Cmd` to `Ctrl` in common shortcuts.
* Finder sidebar
* User & Groups > Login Items
  * 1Password
  * Hyper
  * Monosnap

## Create 'Sites' directory.

    mkdir ~/Sites