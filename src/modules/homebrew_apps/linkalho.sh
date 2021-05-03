source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/rdmrocha/linkalho/releases/download/v1.0.5/linkalho-v1.0.5.zip
PKG_DIR=$ROOT_BUILD_PATH/linkalho
PKG_OUT_DIR=$ROOT_BUILD_PATH/linkalho/out
PKG_FILE_PATH=$PKG_DIR/linkalho-v1.0.5.zip
PKG_FILE_HASH=f546b94cb5c3aff73725f51caa7fcc93

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

cp -r $PKG_OUT_DIR/linkalho.nro $ROOT_DIST_PATH/switch
