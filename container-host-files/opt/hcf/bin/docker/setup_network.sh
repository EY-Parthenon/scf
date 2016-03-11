#!/bin/bash
# © Copyright 2015 Hewlett Packard Enterprise Development LP
set -e

# Usage: setup_overlay_network.sh <OVERLAY_SUBNET> <OVERLAY_GATEWAY>
overlay_subnet=$1
overlay_gateway=$2

docker network create --driver=bridge --subnet="${overlay_subnet}" --gateway="${overlay_gateway}" hcf
