source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/meganukebmp/Switch_90DNS_tester/releases/download/v1.0.3/Switch_90DNS_tester.nro
PKG_DIR=$ROOT_BUILD_PATH/Switch_90DNS_tester
PKG_OUT_DIR=$ROOT_BUILD_PATH/Switch_90DNS_tester/out
PKG_FILE_PATH=$PKG_DIR/Switch_90DNS_tester.nro
PKG_FILE_HASH=4490c3692631a51dcdeafe6adc3e4a3a

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

cp -r $PKG_FILE_PATH $ROOT_DIST_PATH/switch
