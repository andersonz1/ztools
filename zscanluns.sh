#!/bin/bash
echo -e "Scanning for new luns at: "
for i in $(ls -d /sys/class/scsi_host/*)
do
  echo -e "  $i;"
  echo "- - - " > $i/scan
done
