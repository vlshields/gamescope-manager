# Gamescope Manager

A psuedo package manager for gamescope on Debian Trixie.

**Background**

Gamescope did not make it into Debian's latest stable release. Gamescope is an amazing tool built by Valve. It is a microcompositor built specifically for
Steam and allows users to create standalone or nested "Steam Sessions". Since Debian Trixie is a great distro for gaming (especially if you want a stable distro like me), I thought this script might be useful for others. Another option would be to pin gamescope from the unstable repository - but that is a bit involved and not really worth it for a single package. Before building gamescope-manager I would manually check for a new version once in a while and use wget to pull in the .deb and install. gamescope-manager automates that process and does even more.

**Caution**

Debian developers offer hours of their free time to ensure *every* package in debian's stable release is very thoroughly tested. If you install gamescope on Trixie and experiance bugs or breakages please *do not* report them to the Debian Bug Tracker. Use this manager at your own risk.

## Installation

Instructions on how to install the project.

```bash
# clone the repo
git clone https://github.com/vlshields/gamescope-manager.git
cd gamescope-manager

# make it executable 
chmod +x gamescope-manager

# (Optional) Create a symlink 
sudo ln -s $(pwd)/gamescope-manager /usr/local/bin/gamescope-manager
```

## Usage
To view all available options, use the --help flag:

**Install**: Downloads and installs the latest gamescope package

**Remove**: Uninstalls gamescope

**Update**: Updates to the latest version

**List**: Shows all available packages in the repository

**Info**: Displays information about available and installed packages

```bash
gamescope-manager [install|remove|update|list|info]
```
#### Examples
```bash
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

