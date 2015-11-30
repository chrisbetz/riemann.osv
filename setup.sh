curl -o riemann-0.2.10.tar.bz2 https://aphyr.com/riemann/riemann-0.2.10.tar.bz2
tar xvfj riemann-0.2.10.tar.bz2
mkdir plugins

# Build plugins necessary
git clone https://github.com/tnn1t1s/riemann-elastic.git plugins/riemann-elastic
(cd plugins/riemann-elastic/; lein uberjar)

## Copy plugins into proper places
cp plugins/**/target/*-standalone.jar plugins/
