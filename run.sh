#!/bin/bash
find /root/.polyglot/nodeservers/ -name 'requirements.txt' -exec pip3 install -r {} \;
exec /opt/udi-polyglotv2/polyglot-v2-linux-x64
