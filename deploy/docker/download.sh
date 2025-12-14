#!/bin/bash

export version="v0.0.1"
export node_os=$(uname -s | tr '[:upper:]' '[:lower:]')
export node_arch=$(uname -m | sed s/aarch64/arm64/ | sed s/x86_64/amd64/)

echo "Fetching histogram-binary for ${node_os}/${node_arch}"

cd /tmp
wget -O histogram-quantile.tar.gz "https://github.com/SigNoz/signoz/releases/download/histogram-quantile%2F${version}/histogram-quantile_${node_os}_${node_arch}.tar.gz"


