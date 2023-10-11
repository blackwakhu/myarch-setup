clear
echo "updating and upgrading the system"
sudo apt update 
sudo apt upgrade

echo "installng wget and curl"
sudo apt install wget
sudo apt install curl

echo "installing snap"
sudo apt install snapd

echo "installing code"
sudo snap install --classic code

echo "installing java"
sudo apt install default-jre

echo "installing ant"
sudo apt install ant

echo "installing ruby"
sudo apt-get install ruby

echo "installing rust"
curl --proto '=https' --tlsv1.3 https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env
sudo apt upgrade && sudo apt update
sudo apt install build-essentials

echo "installing mongodb"
curl -fsSL https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
sudo apt update
sudo apt install mongodb-org
sudo systemctl start mongod.service
sudo systemctl enable mongod

echo "installing mariadb"
sudo apt update
sudo apt install mariadb-server
sudo systemctl start mariadb.service
sudo mysql_secure_installation

echo "installing mono"
sudo apt install gnupg ca-certificates
sudo apt install apt-transport-https dirmngr gnupg ca-certificates
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/debian stable-buster main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt update
sudo apt install mono-devel
sudo apt-get install mono-develop

echo "installing dot net"
wget https://packages.microsoft.com/config/ubuntu/23.04/packages-microsoft-prod.deb

echo "installing snapd"
sudo apt install snapd

echo "installing intellij idea"
sudo snap install intellij-idea-community --classic

echo "installing pycharm"
sudo snap install pycharm-community --classic

echo "installing dbeaver"
sudo snap install dbeaver-ce

echo "installing vlc"
sudo snap install vlc

echo "installing gimp"
sudo snap install gimp
