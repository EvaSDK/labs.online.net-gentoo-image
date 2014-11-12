#!/bin/sh

# X: not supported currently
rsync -iaAHKx \
	--delete \
	--delete-excluded \
	--exclude-from=PATTERNS \
	--include-from=PATTERNS \
	/ /mnt/gentoo/

# Avoid error message on boot
touch /mnt/gentoo/etc/nbdtab

# Drop /usr/portage mount point
sed '/\/usr\/portage/d' -i /mnt/gentoo/etc/fstab
