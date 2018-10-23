#!/bin/bash

# T&M Hansson IT AB © - 2018, https://www.hanssonit.se/

# shellcheck disable=2034,2059
true
# shellcheck source=lib.sh
. <(curl -sL https://raw.githubusercontent.com/nextcloud/vm/master/lib.sh)

# Check for errors + debug code and abort if something isn't right
# 1 = ON
# 0 = OFF
DEBUG=0
debug_mode

# Check if root
root_check

# At least port 80 needs to be open on localhost
network_ok
check_open_port 80 localhost

# Install PageKite
install_if_not pagekite

# Do the signup
# pagekite.py [--options] [service] kite-name [+flags]
pagekite --signup
pagekite --daemonize

# fetch the yourdomain.pagekite.me somehow to set trusted host (nextcloud config.php)

# Create virtual hosts (redirect http --> https

# make TLS- TLS all the way

# and so on and so on 