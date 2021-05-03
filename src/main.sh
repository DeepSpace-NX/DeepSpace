source src/utils/constants.sh

cs_clean

sh src/modules/system/atmosphere.sh

sh src/modules/bootloader/hekate.sh

sh src/modules/system_modules/sigpatches.sh
sh src/modules/system_modules/sys-con.sh
sh src/modules/system_modules/MissionControl.sh
sh src/modules/system_modules/ldn_mitm.sh
sh src/modules/system_modules/nx-ovlloader.sh
sh src/modules/system_modules/Tesla-Menu.sh
sh src/modules/system_modules/ovl-sysmodules.sh
sh src/modules/system_modules/ovl-EdiZon.sh
