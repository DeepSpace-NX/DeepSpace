source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/ITotalJustice/patches/releases/download/11.0.1-0.18.1/fusee.zip
PKG_DIR=$ROOT_BUILD_PATH/sigpatches
PKG_OUT_DIR=$ROOT_BUILD_PATH/sigpatches/out
PKG_FILE_PATH=$PKG_DIR/fusee.zip
PKG_FILE_HASH=48e7fbe0e5c36a102e32868f771f3f78

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

cp -r $PKG_OUT_DIR/* $ROOT_DIST_PATH
