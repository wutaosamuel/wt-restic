# full backup for /

# TODO: test it
restic --exclude={/dev,/media,/mnt,/proc,/run,/sys,/tmp,/var/tmp} -r /tmp backup /