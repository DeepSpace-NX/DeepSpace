source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/rashevskyv/dbi/releases/download/267/DBI.nro
PKG_DIR=$ROOT_BUILD_PATH/dbi
PKG_OUT_DIR=$ROOT_BUILD_PATH/dbi/out
PKG_FILE_PATH=$PKG_DIR/DBI.nro
PKG_FILE_HASH=7a4e8bc165868012085e87e983ff63bc

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_mkdir $ROOT_DIST_PATH/switch/DBI

cp -r $PKG_FILE_PATH $ROOT_DIST_PATH/switch/DBI
