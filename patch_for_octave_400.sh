#!/bin/bash

envoke()
{
    echo $@
    $@
}

for ex in `ls -d ex?`
do
    envoke cp patch_for_octave_400/makeValidFieldName.m $ex/lib
    envoke cp patch_for_octave_400/xxNumToHexStr.m $ex/lib
    envoke cp patch_for_octave_400/jsonlab/loadjson.m $ex/lib/jsonlab
done
