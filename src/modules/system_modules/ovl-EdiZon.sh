source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/WerWolv/EdiZon/releases/download/snapshot/ovlEdiZon.ovl
PKG_DIR=$ROOT_BUILD_PATH/EdiZon
PKG_OUT_DIR=$ROOT_BUILD_PATH/EdiZon/out
PKG_FILE_PATH=$PKG_DIR/ovlEdiZon.ovl
PKG_FILE_HASH=7c2d372e7fa3ecf93a9e15f656776171

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

cp -r $PKG_FILE_PATH $ROOT_DIST_PATH/switch/.overlays/
