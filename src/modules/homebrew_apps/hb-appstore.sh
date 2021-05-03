source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/fortheusers/hb-appstore/releases/download/2.2/appstore.nro
PKG_DIR=$ROOT_BUILD_PATH/appstore
PKG_OUT_DIR=$ROOT_BUILD_PATH/appstore/out
PKG_FILE_PATH=$PKG_DIR/appstore.nro
PKG_FILE_HASH=1cc07afe7afac2515c02c238fab3e8c1

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_mkdir $ROOT_DIST_PATH/switch/appstore

cp -r $PKG_FILE_PATH $ROOT_DIST_PATH/switch/appstore
