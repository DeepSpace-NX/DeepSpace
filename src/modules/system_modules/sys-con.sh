source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/cathery/sys-con/releases/download/v0.6.2/sys-con-0.6.2.zip
PKG_DIR=$ROOT_BUILD_PATH/sys-con
PKG_OUT_DIR=$ROOT_BUILD_PATH/sys-con/out
PKG_FILE_PATH=$PKG_DIR/sys-con-0.6.2.zip
PKG_FILE_HASH=aec182a77279302d152065ad883e45cf

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

cp -r $PKG_OUT_DIR/* $ROOT_DIST_PATH
