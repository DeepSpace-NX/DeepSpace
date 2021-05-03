source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/CaiMiao/Tencent-switcher-GUI/releases/download/0.1.1/tencent-switcher-gui.nro
PKG_DIR=$ROOT_BUILD_PATH/Tencent-switcher-GUI
PKG_OUT_DIR=$ROOT_BUILD_PATH/Tencent-switcher-GUI/out
PKG_FILE_PATH=$PKG_DIR/tencent-switcher-gui.nro
PKG_FILE_HASH=6fa0660ffdccf3e7e5cbe197f4fbb0b7

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

cp -r $PKG_FILE_PATH $ROOT_DIST_PATH/switch
