# Bash automatically sources .bashrc when it is started as an interactive
# non-login shell, or when it is connected to a network connection, such as
# when started by rshd or sshd.
#
# I use this file to hold any bash specific items that I want done for every
# interactive shell.  In addition to the times when bash automatically sources
# this file, for login shells it is sourced by my .bash_profile (but only if
# the shell is interactive).

# Source system-wide aliases and functions
if [ -f /etc/bashrc ]; then
   source /etc/bashrc
fi

if [ -f /opt/local/etc/bash_completion ]; then
   source /opt/local/etc/bash_completion
fi

set -o ignoreeof
