source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/Atmosphere-NX/Atmosphere/releases/download/0.18.1/atmosphere-0.18.1-master-1545fa9d+hbl-2.4.0+hbmenu-3.4.0.zip
PKG_DIR=$ROOT_BUILD_PATH/atmosphere
PKG_OUT_DIR=$ROOT_BUILD_PATH/atmosphere/out
PKG_FILE_PATH=$PKG_DIR/atmosphere-0.18.1-master-1545fa9d+hbl-2.4.0+hbmenu-3.4.0.zip
PKG_FILE_HASH=0c534639f94e301e9974f628f929e917

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

cp -r $PKG_OUT_DIR/* $ROOT_DIST_PATH

DIST_EXOSPHERE_FILE_PATH=$ROOT_DIST_PATH/exosphere.ini
cp $ROOT_DIST_PATH/atmosphere/config_templates/exosphere.ini $DIST_EXOSPHERE_FILE_PATH
sed -i "" -e 's/blank_prodinfo_sysmmc=0/blank_prodinfo_sysmmc=1/' -e 's/blank_prodinfo_emummc=0/blank_prodinfo_emummc=1/' $DIST_EXOSPHERE_FILE_PATH

DIST_SYSTEM_SETTINGS_FILE_PATH=$ROOT_DIST_PATH/atmosphere/config/system_settings.ini
cp $ROOT_DIST_PATH/atmosphere/config_templates/system_settings.ini $DIST_SYSTEM_SETTINGS_FILE_PATH
sed -i "" -e 's/; dmnt_cheats_enabled_by_default = u8!0x1/dmnt_cheats_enabled_by_default = u8!0x0/' $DIST_SYSTEM_SETTINGS_FILE_PATH

fs_mkdir $ROOT_DIST_PATH/atmosphere/hosts
cp src/modules/system/atmosphere/hosts/default.txt $ROOT_DIST_PATH/atmosphere/hosts/default.txt
