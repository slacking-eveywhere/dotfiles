# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# If running bash, source .bashrc if it exists and is readable
if [[ -n "$BASH_VERSION" && -r "$HOME/.bashrc" ]]; then
    . "$HOME/.bashrc"
fi

# Add user's private bin to PATH if it exists and is not already included
if [[ -d "$HOME/bin" && ":$PATH:" != *":$HOME/bin:"* ]]; then
    export PATH="$HOME/bin:$PATH"
fi

if [[ -d "$HOME/.local/bin" && ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
    export PATH="$HOME/.local/bin:$PATH"
fi

# Add Go binary path if it exists and is not already included
if [[ -d "/usr/local/go/bin" && ":$PATH:" != *":/usr/local/go/bin:"* ]]; then
    export PATH="$PATH:/usr/local/go/bin"
fi

# Add JetBrains Toolbox scripts path if it exists and is not already included
if [[ -d "$HOME/.local/share/JetBrains/Toolbox/scripts" && ":$PATH:" != *":$HOME/.local/share/JetBrains/Toolbox/scripts:"* ]]; then
    export PATH="$PATH:$HOME/.local/share/JetBrains/Toolbox/scripts"
fi
