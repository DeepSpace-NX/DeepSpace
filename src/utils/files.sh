source src/utils/logger.sh

function fs_mkdir() {
    if [ ! -d $1 ]; then
        mkdir $1
    fi
}

function fs_cldir() {
    if [ -d $1 ]; then
        rm -rf $1
    fi
    fs_mkdir $1
}

function fs_md5_check() {
    if [ -f $1 ]; then
        md5=$(md5sum $1 | cut -d ' ' -f1)
        log "<< fs_md5_check, $@, $md5"
        if [ $md5 == $2 ]; then
            return 1
        else
            return 0
        fi
    else
        return 0
    fi
}

function fs_download() {
    fs_md5_check $2 $3
    if [ $? == 1 ]; then
        return
    fi

    fileName=$2md5sum
    fs_mkdir ${fileName%/*}

    log ">> fs_download $@"

    wget $1 -O $2

    log "<< fs_download $@"

    fs_md5_check $2 $3
    if [ $? == 0 ]; then
        log "xx fs_download checksum fail"
        exit 1
    fi
}

function fs_unzip() {
    log ">> fs_unzip $@"

    fs_cldir $2
    unzip $1 -d $2

    log "<< fs_unzip $@"
}
