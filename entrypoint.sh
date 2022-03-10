#!/bin/sh -l

TAG=${GITHUB_REF##*/}-${GITHUB_RUN_ID}-$(date +"%s")

curl -fsSL git.io/file-transfer | sh
./transfer cow --block 2621440 -s -p 64 --no-progress ${FILES} 2>&1 | tee cowtransfer.log
echo "::notice title=CowTransfer::$(cat cowtransfer.log | grep https)"
echo "::set-output name=url::$(cat cowtransfer.log | grep https | cut -f3 -d" ")"
