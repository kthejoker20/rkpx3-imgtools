#!/bin/bash
#add needed files
sudo cp -ap ref/app/SuperSu.apk system_mount/app/SuperSu.apk
sudo rm -f system_mount/bin/Busybox
sudo cp -fap ref/bin/su system_mount/bin/su
sudo cp -fap ref/bin/busybox system_mount/bin/busybox


#set permissions
sudo chown system_mount/app/SuperSu.apk --reference ref/app/SuperSu.apk
sudo chmod system_mount/app/SuperSu.apk --reference ref/app/SuperSu.apk
sudo chown system_mount/bin/su --reference ref/bin/su
sudo chmod system_mount/bin/su --reference ref/bin/su
sudo chown system_mount/bin/busybox --reference ref/bin/busybox
sudo chmod system_mount/bin/busybox --reference ref/bin/busybox
