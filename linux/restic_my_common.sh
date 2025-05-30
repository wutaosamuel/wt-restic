# In my virtual machine,
# The files are stored in /home and /root

restic --exclude={/dev,/media,/mnt,/proc,/run,/sys,/tmp,/var/tmp} -r /tmp backup --verbose --dry-run /home /root