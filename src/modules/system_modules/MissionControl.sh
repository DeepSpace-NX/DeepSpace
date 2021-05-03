source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/ndeadly/MissionControl/releases/download/v0.4.1/MissionControl-0.4.1.zip
PKG_DIR=$ROOT_BUILD_PATH/MissionControl
PKG_OUT_DIR=$ROOT_BUILD_PATH/MissionControl/out
PKG_FILE_PATH=$PKG_DIR/MissionControl-0.4.1.zip
PKG_FILE_HASH=8ba5236adddcd778729ed2d9abd5b6fb

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

cp -r $PKG_OUT_DIR/* $ROOT_DIST_PATH
