# download deps
#
 sudo apt-get update
 sudo apt-get upgrade -q -y
 sudo apt-get install postgresql postgresql-contrib

sudo apt-get install \
git \
tmux \
vim \
wget \
curl \
tree \
build-essential \
g++ \
libncurses-dev \
libssl-dev \
libwxgtk3.0-gtk3-dev \
xsltproc \
libxml2-utils \
fop \
-q -y

### download OTP
git clone https://github.com/erlang/otp.git
cd otp
##
### build OTP
git checkout maint-25
./configure
sudo make
sudo make install
sudo make docs
sudo make install-docs
##
### download Elixir
cd ..
git clone https://github.com/elixir-lang/elixir.git
cd elixir
git fetch --all --tags
##
### build Elixir
git checkout v1.14.2
make clean test


# download tmux config
# download vim config
# download vundle
