#!/bin/bash

# restic
resticDir="$(dirname $0)"
#envFile="$resticDir"/restic_env.txt
#source $envFile

includeFileList="$resticDir"/mobile_main_restic_includes.txt
excludeFileList="$resticDir"/mobile_main_restic_excludes.txt

restic -r C:/D/storage-encrypt/restic --verbose backup --files-from "$includeFileList" --exclude-file "$excludeFileList"
