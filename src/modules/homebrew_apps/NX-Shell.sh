source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/joel16/NX-Shell/releases/download/3.20/NX-Shell.nro
PKG_DIR=$ROOT_BUILD_PATH/NX-Shell
PKG_OUT_DIR=$ROOT_BUILD_PATH/NX-Shell/out
PKG_FILE_PATH=$PKG_DIR/NX-Shell.nro
PKG_FILE_HASH=85d712bb2edc6664e47c229a82b8691c

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_mkdir $ROOT_DIST_PATH/switch/NX-Shell

cp -r $PKG_FILE_PATH $ROOT_DIST_PATH/switch/NX-Shell
