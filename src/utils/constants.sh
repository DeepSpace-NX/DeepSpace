source src/utils/files.sh

ROOT_ARTIFACTS_PATH='artifacts'
ROOT_BUILD_PATH='build'
ROOT_DIST_PATH='dist'

fs_mkdir $ROOT_ARTIFACTS_PATH
fs_mkdir $ROOT_BUILD_PATH
fs_mkdir $ROOT_DIST_PATH

function cs_clean() {
    fs_cldir $ROOT_ARTIFACTS_PATH
    fs_cldir $ROOT_DIST_PATH
    # fs_cldir $ROOT_BUILD_PATH
}
