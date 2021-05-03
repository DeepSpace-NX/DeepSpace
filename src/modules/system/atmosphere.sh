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

HOSTS_FILE=$(
    cat <<-EOF
# 90DNS\n127.0.0.1 *nintendo.com\n127.0.0.1 *nintendo.net\n127.0.0.1 *nintendo.jp\n127.0.0.1 *nintendo.co.jp\n127.0.0.1 *nintendo.co.uk\n127.0.0.1 *nintendo-europe.com\n127.0.0.1 *nintendowifi.net\n127.0.0.1 *nintendo.es\n127.0.0.1 *nintendo.co.kr\n127.0.0.1 *nintendo.tw\n127.0.0.1 *nintendo.com.hk\n127.0.0.1 *nintendo.com.au\n127.0.0.1 *nintendo.co.nz\n127.0.0.1 *nintendo.at\n127.0.0.1 *nintendo.be\n127.0.0.1 *nintendods.cz\n127.0.0.1 *nintendo.dk\n127.0.0.1 *nintendo.de\n127.0.0.1 *nintendo.fi\n127.0.0.1 *nintendo.fr\n127.0.0.1 *nintendo.gr\n127.0.0.1 *nintendo.hu\n127.0.0.1 *nintendo.it\n127.0.0.1 *nintendo.nl\n127.0.0.1 *nintendo.no\n127.0.0.1 *nintendo.pt\n127.0.0.1 *nintendo.ru\n127.0.0.1 *nintendo.co.za\n127.0.0.1 *nintendo.se\n127.0.0.1 *nintendo.ch\n127.0.0.1 *nintendoswitch.com\n127.0.0.1 *nintendoswitch.com.cn\n127.0.0.1 *nintendoswitch.cn\n95.216.149.205 *conntest.nintendowifi.net\n95.216.149.205 *ctest.cdn.nintendo.net\n221.230.145.22 *ctest.cdn.n.nintendoswitch.cn\n
EOF
)

fs_mkdir $ROOT_DIST_PATH/atmosphere/hosts
echo $HOSTS_FILE >$ROOT_DIST_PATH/atmosphere/hosts/default.txt
