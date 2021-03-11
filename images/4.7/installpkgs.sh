#!/bin/bash
set -x
KERNEL_VERSION=$(dnf list kernel --releasever=8.3 -q | grep 4.18 | awk '{print $2}').x86_64
dnf upgrade --releasever=8.3 --refresh -y
dnf install -y --releasever=8.3 kmod bpftool bpftrace bcc bcc-tools kernel-headers
mkdir -p "/lib/modules/${KERNEL_VERSION}"
ln -s "/usr/src/kernels/${KERNEL_VERSION}" "/lib/modules/${KERNEL_VERSION}/source"
ln -s "/usr/src/kernels/${KERNEL_VERSION}" "/lib/modules/${KERNEL_VERSION}/build"
