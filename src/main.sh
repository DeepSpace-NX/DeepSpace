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

sh src/modules/homebrew_apps/aio-switch-updater.sh
sh src/modules/homebrew_apps/Awoo-Installer.sh
sh src/modules/homebrew_apps/dbi.sh
sh src/modules/homebrew_apps/EdiZon.sh
sh src/modules/homebrew_apps/hb-appstore.sh
sh src/modules/homebrew_apps/JKSV.sh
sh src/modules/homebrew_apps/linkalho.sh
sh src/modules/homebrew_apps/NX-Activity-Log.sh
sh src/modules/homebrew_apps/NX-Shell.sh
sh src/modules/homebrew_apps/Tencent-switcher-GUI.sh
sh src/modules/homebrew_apps/Switch_90DNS_tester.sh

cd $ROOT_DIST_PATH
zip -q -r ../$ROOT_ARTIFACTS_PATH/DeepSpace.zip *
