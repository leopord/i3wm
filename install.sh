#!/bin/bash
pushd $(dirname $0)
sudo ./sh/app.sh
./sh/config.sh
popd
