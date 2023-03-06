echo "Do not run this with sudo!"
sudo apt update
sudo apt install wget -y
echo "Downloading..."
wget https://github.com/BastelPichi/berkely-db-fixed/releases/download/fix/db-4.8.30.NC.tar.gz
tar xf db-4.8.30.NC.tar.gz
cd db-4.8.30.NC/build_unix
../dist/configure -q --disable-shared --enable-cxx --disable-replication --with-pic --prefix=/opt/local/db-4.8.30.NC
make
sudo make install
