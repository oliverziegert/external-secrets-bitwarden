#!/bin/bash

set -e

echo "Set server to ${BW_HOST}"
bw config server ${BW_HOST}
sleep 0.5

echo "Login using apikey"
bw login --apikey
sleep 0.5

echo "Generate session token uning bw unlock & env BW_PASSWORD"
export BW_SESSION=$(bw unlock --passwordenv BW_PASSWORD --raw)
sleep 0.5

echo 'Running `bw server` on port 8087'
bw serve --hostname 0.0.0.0 #--disable-origin-protection