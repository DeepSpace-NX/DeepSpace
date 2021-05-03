source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/spacemeowx2/ldn_mitm/releases/download/v1.7.0/ldn_mitm_v1.7.0.zip
PKG_DIR=$ROOT_BUILD_PATH/ldn_mitm
PKG_OUT_DIR=$ROOT_BUILD_PATH/ldn_mitm/out
PKG_FILE_PATH=$PKG_DIR/ldn_mitm_v1.7.0.zip
PKG_FILE_HASH=f355db4cb7286b824c22d4784fcd47c5

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

cp -r $PKG_OUT_DIR/* $ROOT_DIST_PATH
