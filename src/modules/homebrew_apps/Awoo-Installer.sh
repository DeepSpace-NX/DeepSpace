source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/Huntereb/Awoo-Installer/releases/download/1.3.4/Awoo-Installer.zip
PKG_DIR=$ROOT_BUILD_PATH/Awoo-Installer
PKG_OUT_DIR=$ROOT_BUILD_PATH/Awoo-Installer/out
PKG_FILE_PATH=$PKG_DIR/Awoo-Installer.zip
PKG_FILE_HASH=c7ab9bc3d10b4f4e9fd9b45703d7bac1

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

cp -r $PKG_OUT_DIR/* $ROOT_DIST_PATH
