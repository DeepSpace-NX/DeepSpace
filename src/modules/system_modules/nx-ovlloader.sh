source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/WerWolv/nx-ovlloader/releases/download/v1.0.6/nx-ovlloader.zip
PKG_DIR=$ROOT_BUILD_PATH/nx-ovlloader
PKG_OUT_DIR=$ROOT_BUILD_PATH/nx-ovlloader/out
PKG_FILE_PATH=$PKG_DIR/nx-ovlloader.zip
PKG_FILE_HASH=d2cb39faa263f68e3128dea946945f97

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

cp -r $PKG_OUT_DIR/* $ROOT_DIST_PATH
