#!/bin/bash -e

## - recommends?
## - firmware?
##    lb doesn't seem to know how to install firmware

lb config \
	--apt-indices false \
	--apt-secure true \
	--apt-recommends true \
	--archive-areas "main contrib non-free" \
	--cache false\
	--distribution trixie \
	--distribution-chroot trixie \
	--distribution-binary trixie \
	--debian-installer none \
	--debian-installer-distribution trixie \
	--parent-distribution trixie \
	--parent-distribution-chroot trixie \
	--parent-distribution-binary trixie \
	--parent-debian-installer-distribution trixie \
	--firmware-binary false \
	--firmware-chroot false \
	--bootappend-live 'boot=live components quiet splash username=live'

## todo
#	--apt-recommends false \
#	--debian-installer live \
#	--firmware-binary false \
#	--firmware-chroot false \
