source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/J-D-K/JKSV/releases/download/06.07.2020/JKSV.nro
PKG_DIR=$ROOT_BUILD_PATH/JKSV
PKG_OUT_DIR=$ROOT_BUILD_PATH/JKSV/out
PKG_FILE_PATH=$PKG_DIR/JKSV.nro
PKG_FILE_HASH=912e9c3a62f69ff06fbd7a8b432a1fd8

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_mkdir $ROOT_DIST_PATH/switch/JKSV

cp -r $PKG_FILE_PATH $ROOT_DIST_PATH/switch/JKSV
