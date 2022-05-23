#!/bin/bash

set -e 

scriptsDirectory=$(realpath $(dirname $0))
rootDirectory=$(realpath "${scriptsDirectory}/..")
buildDirectory=$rootDirectory/build

rm -rf ${buildDirectory}/conf/

if [ ! -d ${buildDirectory}/conf ] 
then
    echo "Creating build directory"
    mkdir -p ${buildDirectory}/conf
fi

if [ ! -f ${buildDirectory}/conf/local.conf ] 
then
    echo "Setting up prepared local.conf"
    ln -s ${scriptsDirectory}/templates/bblayers.conf ${buildDirectory}/conf/bblayers.conf
    ln -s ${scriptsDirectory}/templates/local.conf ${buildDirectory}/conf/local.conf
fi

. ${rootDirectory}/layers/openembedded-core/oe-init-build-env ${buildDirectory}
echo "Initialization done"