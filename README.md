# Gamescope Manager

A psuedo package manager for gamescope on Debian Trixie.

## IMPORTANT update

Please be informed that the latest gamescope build in the unstable repository is incompatible with Trixie.
The most recent compatible .deb is in this repo and gamescope-manager now points to it.

**Background**

Gamescope did not make it into Debian's latest stable release. Gamescope is an amazing tool built by Valve. It is a microcompositor built specifically for
Steam and allows users to create standalone or nested "Steam Sessions". Since Debian Trixie is a great distro for gaming (especially if you want a stable distro like me), I thought this script might be useful for others. Another option would be to pin gamescope from the unstable repository - but that is a bit involved and not really worth it for a single package. Before building gamescope-manager I would manually check for a new version once in a while and use wget to pull in the .deb and install. gamescope-manager automates that process and does even more.

**Caution**

Debian developers offer hours of their free time to ensure *every* package in debian's stable release is very thoroughly tested. If you install gamescope on Trixie and experiance bugs or breakages please *do not* report them to the Debian Bug Tracker. Use this manager at your own risk.

## Installation

Using build.sh (probably should have been called install.sh) creates a symlink to /etc/local/bin/gamescope-manager.
This is the recommended method.

```bash
# clone the repo
git clone https://github.com/vlshields/gamescope-manager.git
cd gamescope-manager

# make it executable 
chmod +x build.sh

# creates the symlink
./build.sh

# Updating
cd $HOME/gamescope-manager #sorry my keyboard doesnt have a tilde
git pull
```

## Usage
To view all available options, use the --help flag:

```bash
~$ gamescope-manager --help
gamescope-manager - Mini package manager for gamescope

Usage: gamescope-manager [COMMAND]

Commands:
    install     Install the latest gamescope package
    remove      Remove gamescope
    update      Update to the latest version
    list        List all available packages
    info        Show package information
    help        Show this help message

Examples:
    sudo gamescope-manager install
    sudo gamescope-manager update
    gamescope-manager list

# More examples

# Install gamescope
sudo gamescope-manager install

# Update to latest version
sudo gamescope-manager update

# List available packages
gamescope-manager list

# Show package info
gamescope-manager info

# Remove gamescope
sudo gamescope-manager remove
```
## Contributing

Any contributions are more than welcome. You can open an issue or simply fork the repo and submit your PR.

Bug reports should be related to the manager itself and not gamescope.

## License

MIT

## Contact

**Mastadon**: @itsvshields

