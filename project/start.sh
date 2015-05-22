#!/bin/bash
IPAddr=`ip -o -4 addr show | awk -F '[ /]+' '/global/ {print $4}'` # This doesn't *need* to have a specific network interface for the moment, we'll see if any bugs arise.
export GOPATH=/srv/app/projectName
go get code.google.com/p/go-tour/gotour
(cd /srv/app/tour ; gotour -http=$IPAddr:3999)