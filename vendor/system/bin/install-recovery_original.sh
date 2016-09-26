#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 7346176 e9c26da7a216c8c9345c53d8e6130e0e744c8729 4282368 b6515c530ab7b517e44c27808422c287b5b1bd93
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:7346176:e9c26da7a216c8c9345c53d8e6130e0e744c8729; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:4282368:b6515c530ab7b517e44c27808422c287b5b1bd93 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery e9c26da7a216c8c9345c53d8e6130e0e744c8729 7346176 b6515c530ab7b517e44c27808422c287b5b1bd93:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
