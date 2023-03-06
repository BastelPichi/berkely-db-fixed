echo "Do not run this with sudo!"
sudo apt update
sudo apt install git -y
echo "Downloading..."
git clone https://github.com/BastelPichi/berkely-db-fixed
cd berkely-db-fixed/build_unix
../dist/configure -q --disable-shared --enable-cxx --disable-replication --with-pic --prefix=/opt/local/db-4.8.30.NC
make
sudo make install
