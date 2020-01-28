#!/usr/bin/env bash

set -ex

OUTPUT_DIR=lxk-build-output

mkdir ${OUTPUT_DIR}

linuxkit build -dir ${OUTPUT_DIR} -format $2 $1

files=$(find ${OUTPUT_DIR} -type f)

echo ::set-output name=files::${files}
