#!/usr/bin/env bash
#
# Planescape: Torment Mod Installer for Linux (v1.0)
#
# To run (if installed on default GOG path):
#   $ ./install.sh
# To specify a different path for the game folder:
#   $ ./install.sh /path/to/game/directory

set -e

# Get full path to project directory
readonly SRC_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Set which WeiDU executables to use
if [[ "$(uname -m)" == "x86_64" ]]; then
  weidu_bin=$SRC_DIR/weidu-linux/bin/amd64
else
  weidu_bin=$SRC_DIR/weidu-linux/bin/i386
fi
PATH=$PATH:$weidu_bin

# Assume game is in the default GOG directory unless otherwise specified.
if [ ! -z ${1} ]; then
  pst_dir=${1}
else
  pst_dir=${HOME}/GOG\ Games/Planescape\ Torment/prefix/drive_c/GOG\ Games/Planescape\ Torment
fi

# Check dependencies.
echo "Verifying playonlinux is installed..."
if command -v playonlinux > /dev/null; then
  echo "Done!"
else
  echo "ERROR: playonlinux not installed" >&2
  exit 1
fi

# Verify directory exists.
echo "Verifying game directory exists..."
if [[ ! -d "$pst_dir" ]]; then
  echo "ERROR: The provided game directory does not exist: ${pst_dir}" >&2
  exit 1
fi
echo "Done!"

# Change all filenames in game directory to lowercase.
cd "$pst_dir"
yes | tolower

# Create linux.ini file.
cp -f "${SRC_DIR}/linux.ini.tmpl" "${pst_dir}/linux.ini"
sed -ri "s|%pst_dir%|${pst_dir}|g" "${pst_dir}/linux.ini"

# Copy mod data to game directory.
cp -r "${SRC_DIR}/mod_data"/* "${pst_dir}"

# Give user a heads up mods are about to install.
echo -e "\e[1;92mATTENTION:\e[25m User in put required during mod installation!\e[0m"
read -n1 -r -p "Press any key to continue..." key

# Install widescreen mod. Files from data/ are moved into cache/ temporarily
# during mod installation. No idea why this is necessary but it is.
echo "Installing widescreen mod..."
if [[ ! -d "${pst_dir}/cache" ]]; then
  mkdir "${pst_dir}/cache"
fi
cp "${pst_dir}/data"/* "${pst_dir}/cache/"
weinstall widescreen
rm "${pst_dir}/cache/"*.bif
echo "Done!"

# Install the rest of the mods.
weinstall setup-ghostdogs-pst-ui.tp2
weinstall setup-pst-fix.tp2
weinstall setup-pst-ub.tp2
