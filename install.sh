#core stuff
apt-get -y update 
apt-get -y install make
apt-get -y install curl
apt-get -y install git
apt-get -y install g++

#scheme
apt-get -y install mit-scheme

#python
apt-get -y install python-dev

#java
apt-get -y install openjdk-7-jre
apt-get -y install openjdk-7-jdk

#vim
apt-get -y install vim
cp .vimrc ~/.vimrc

#node
if [ ! -f ./node-v0.10.26.tar.gz ]; then
	wget http://nodejs.org/dist/v0.10.26/node-v0.10.26.tar.gz
	tar -xvf node-v0.10.26.tar.gz
	cd node-v0.10.26
	./configure
	make -j 4
	make install
	cd ..
	npm install http-server -g
fi

#go
if [ ! -f ./go1.2.1.linux-amd64.tar.gz ]; then
  wget https://go.googlecode.com/files/go1.2.1.linux-amd64.tar.gz
  tar -C /usr/local -xzf go1.2.1.linux-amd64.tar.gz
  echo "export PATH=$PATH:/usr/local/go/bin" >> /home/vagrant/.profile
fi
