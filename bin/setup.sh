#!/bin/bash
RIEMANN_HOME=$(dirname "$0")/..
RIEMANN_VERSION="0.2.10"

echo 'Downloading Riemann version' $RIEMANN_VERSION 'for you.'

mkdir -p $RIEMANN_HOME/tmp
curl -o $RIEMANN_HOME/tmp/riemann-$RIEMANN_VERSION.tar.bz2 https://aphyr.com/riemann/riemann-$RIEMANN_VERSION.tar.bz2

echo 'Extracting Riemann'
tar Cxvfj $RIEMANN_HOME/ $RIEMANN_HOME/tmp/riemann-$RIEMANN_VERSION.tar.bz2


mkdir -p $RIEMANN_HOME/plugins

# Build plugins necessary
echo 'Cloning and building riemann-elastic for you.'
git clone https://github.com/chrisbetz/riemann-elastic.git $RIEMANN_HOME/plugins/riemann-elastic
(cd $RIEMANN_HOME/plugins/riemann-elastic/; lein uberjar)

## Copy plugins into proper places
echo 'Moving plugin jar to ' $RIEMANN_HOME/plugins/
cp $RIEMANN_HOME/plugins/**/target/*-standalone.jar $RIEMANN_HOME/plugins/

echo 'Done. Thanks for your patience.'
