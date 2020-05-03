#!/usr/bin/env bash

ROOT=$(pwd)
RESULT=$TASK_RESULT

echo ROOT: $ROOT
echo RESULT: $RESULT

pip show pip
echo ""
esc_ng list

echo test failed!
exit 1
