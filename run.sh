#!/bin/bash
find /root/.polyglot/nodeserver/ -name 'requirements.txt' -exec pip3 install -r {} \;
sh /opt/udi-polyglotv2/polyglot-v2-linux-x64
