source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/WerWolv/Tesla-Menu/releases/download/v1.1.3/ovlmenu.zip
PKG_DIR=$ROOT_BUILD_PATH/Tesla-Menu
PKG_OUT_DIR=$ROOT_BUILD_PATH/Tesla-Menu/out
PKG_FILE_PATH=$PKG_DIR/ovlmenu.zip
PKG_FILE_HASH=447f7daac6f2998ca0651870c2f73a1d

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

cp -r $PKG_OUT_DIR/* $ROOT_DIST_PATH
