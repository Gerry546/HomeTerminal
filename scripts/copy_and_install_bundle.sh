#!/bin/bash

set -e

scp tmp-glibc/deploy/images/cm4-reterminal/hometerminal-debug-bundle.raucb root@192.168.1.216:/mnt/data
ssh root@192.168.1.216 rauc install /mnt/data/hometerminal-debug-bundle.raucb
ssh root@192.168.1.216 reboot