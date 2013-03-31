# sh (or bash when it invoked with the name 'sh') sources .profile when started
# as an interactive login shell, or when started with --login
#
# I use it to contain non-bash specific items, since it is automatically
# sourced when bash is started as 'sh'.  Additionally, my .bash_profile, which
# is automatically sourced when bash is invoked as 'bash', sources this file.

# MacPorts Installer addition on 2012-06-22_at_01:25:25: adding an appropriate PATH variable for use with MacPorts.
export PATH; PATH=~/macports/bin:~/macports/sbin:/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# CLICOLOR tells ls to use in its output.
export CLICOLOR; CLICOLOR=1
