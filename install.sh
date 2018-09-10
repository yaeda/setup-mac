#!/usr/bin/env bash

tempfile=/tmp/setup-mac.zip
workspace=/tmp/setup-mac

# Download zipped installer
curl -LSfs -o ${tempfile} https://github.com/yaeda/setup-mac/archive/master.zip

# Unzip installer into workspace
unzip -oq ${tempfile} -d ${workspace}

# Move to repository root path
pushd ${workspace}/setup-mac-master > /dev/null

# Install
make all

# Move to original path
popd > /dev/null

# Cleanup
rm -rf ${tempfile} ${workspace}