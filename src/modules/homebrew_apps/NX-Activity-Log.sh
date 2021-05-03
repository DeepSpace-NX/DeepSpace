source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/tallbl0nde/NX-Activity-Log/releases/download/v1.3.2/NX-Activity-Log.nro
PKG_DIR=$ROOT_BUILD_PATH/NX-Activity-Log
PKG_OUT_DIR=$ROOT_BUILD_PATH/NX-Activity-Log/out
PKG_FILE_PATH=$PKG_DIR/NX-Activity-Log.nro
PKG_FILE_HASH=e59ff193577381e58c63bc474e5ed308

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_mkdir $ROOT_DIST_PATH/switch/NX-Activity-Log

cp -r $PKG_FILE_PATH $ROOT_DIST_PATH/switch/NX-Activity-Log
