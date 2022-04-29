#!/bin/bash

TARGET=$1

(cd kernel_platform/msm-kernel && git reset --hard)
(cd vendor/qcom/opensource && git reset --hard)

if [[ "$TARGET" == "r0q" ]];
then
  cp -r manifest/patch/msm-kernel/r0q/* kernel_platform/msm-kernel/
elif [[ "$TARGET" == "b0q" ]];
then
  cp -r manifest/patch/msm-kernel/b0q/* kernel_platform/msm-kernel/
  cp -r manifest/patch/vendor_qcom_opensource/b0q/* vendor/qcom/opensource/
elif [[ "$TARGET" == "g0q" ]];
then
  (cd kernel_platform/msm-kernel/ && git reset --hard)
  (cd vendor/qcom/opensource/ && git reset --hard)
fi
