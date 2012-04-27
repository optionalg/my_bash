#!/bin/bash 

# make macports in higher priority
[ -e '/opt/local/bin' ] && export PATH=/opt/local/bin:$PATH

[ -e '/opt/local/man' ] && export MANPATH=/opt/local/man:$MANPATH

[ -f /opt/local/sbin/bitlbee ] && /opt/local/sbin/bitlbee -c $HOME/.bitlbee/bitlbee.conf 
  
[ -f /opt/local/bin/esd ] && /opt/local/bin/esd >/dev/null 2>&1

[ -d "/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin" ] && export PATH=/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin:$PATH

# setup bin path for postgresql
[ -e "/opt/local/lib/postgresql90/bin" ] && export PATH=/opt/local/lib/postgresql90/bin:$PATH

