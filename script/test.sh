#!/usr/bin/env bash

ROOT=$(pwd)
RESULT=$TASK_RESULT

echo ROOT: $ROOT
echo RESULT: $RESULT

tree -L 1 -h $PIP_HOME
echo ""
pip show pip
echo ""
esc_ng list

echo test failed!
exit 1
