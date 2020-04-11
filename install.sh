#!/bin/bash
pushd $(dirname $0)
./sh/app.sh
su leopord -c "./sh/config.sh"
popd
