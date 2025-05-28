#!/bin/bash

#Setup environment
scriptRelDir=$(dirname "$0")
absDir=$(realpath $scriptRelDir)
export PYTHONPATH=$absDir/runner/build/ref:$absDir/runner/build/python:$absDir/runner/build/python/runner
export PATH="$absDir/runner/build/bin:$PATH"

fullfile=$1
filename="${fullfile%.*}"

plp_mkflash --raw "$filename"_flash.bin --flash-boot-binary=$1 --flash-type="spi" --qpi --archi=pulpsissimo --verbose
