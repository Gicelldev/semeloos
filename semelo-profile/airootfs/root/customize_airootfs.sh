#!/bin/bash
# SemeloOS - customize_airootfs.sh
# Runs INSIDE the chroot AFTER pacstrap installs packages

set -e

echo "[SemeloOS] customize_airootfs.sh starting..."

# Method 1: Direct shadow manipulation via sed (most reliable)
sed -i 's|^root:[^:]*:|root::|' /etc/shadow
echo "[SemeloOS] Shadow file modified:"
grep ^root /etc/shadow

# Method 2: Also try chpasswd as backup
echo "root:" | chpasswd 2>/dev/null || echo "[SemeloOS] chpasswd skipped"

echo "[SemeloOS] customize_airootfs.sh DONE!"
