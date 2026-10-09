#!/bin/bash
mkdir -p /relay && cd /relay
curl -fsSL https://raw.githubusercontent.com/XONER4/honer-site/refs/heads/main/relay/server.js -o server.js
npm init -y >/dev/null 2>&1
npm i http-proxy@1.18.1 >/dev/null 2>&1
PORT=8080 exec node server.js
