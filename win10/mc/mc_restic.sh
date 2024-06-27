#!/bin/bash

# restic_test
#restic -r /root/tmp/restic_test --verbose backup --files-from /root/restic/restic_includes.txt --exclude-file /root/restic/restic_excludes.txt

# restic
resticDir="$(dirname $0)"
envFile="$resticDir"/env/machine.env
source $envFile

includeList="$envFile"/mc_restic_includes.txt
excludeList="$envFile"/mc_restic_excludes.txt

restic -r "$STORAGE_PATH" --verbose backup --files-from "$includeList" --exclude-file "$excludeList"
