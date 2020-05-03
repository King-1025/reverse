#!/usr/bin/env bash

ROOT=$(pwd)
RESULT=$TASK_RESULT
ANSS=$ROOT/anss

echo ROOT: $ROOT
echo RESULT: $RESULT

export ESC_LOCAL_PATH=$ANSS
export NO_DOWNLOAD_STATUS=1

mkdir -p $ANSS $RESULT && \
esc_ng download 11352974 && \
tar -xzf $ANSS/anss.tar.gz -C $ANSS && \
apktool b -o $RESULT/anss.apk -k -m --use-aapt2 $ANSS/anss

if [ -e $RESULT ]; then
   esc_ng upload $RESULT
fi

rm -rf $ANSS
