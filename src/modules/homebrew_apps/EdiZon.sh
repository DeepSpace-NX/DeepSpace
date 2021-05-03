source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/WerWolv/EdiZon/releases/download/snapshot/EdiZon.nro
PKG_DIR=$ROOT_BUILD_PATH/EdiZon
PKG_OUT_DIR=$ROOT_BUILD_PATH/EdiZon/out
PKG_FILE_PATH=$PKG_DIR/EdiZon.nro
PKG_FILE_HASH=dcc931a55c962c68f05c0fae6895512b

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_mkdir $ROOT_DIST_PATH/switch/EdiZon

cp -r $PKG_FILE_PATH $ROOT_DIST_PATH/switch/EdiZon
