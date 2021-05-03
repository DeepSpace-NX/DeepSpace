source src/utils/files.sh

ROOT_DIST_PATH='dist'
ROOT_BUILD_PATH='build'

fs_mkdir $ROOT_DIST_PATH
fs_mkdir $ROOT_BUILD_PATH

function cs_clean() {
    fs_cldir $ROOT_DIST_PATH
    # fs_cldir $ROOT_BUILD_PATH
}
