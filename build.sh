#!/bin/bash

# GENTOO
tar -czf gentoo.tar.gz gentoo

# UBUNTU
VERSION=$(cat ubuntu/DEBIAN/control | grep -i version | cut -d\  -f2)
dpkg-deb --build ubuntu ocs-image-config-$VERSION.deb
tar -czf ubuntu.tar.gz ubuntu
