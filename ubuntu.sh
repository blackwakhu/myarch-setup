clear
echo "updating and upgrading the system"
sudo apt update 
sudo apt upgrade

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

echo "installing intellij idea"
sudo snap install intellij-idea-community --classic

echo "installing pycharm"
sudo snap install pycharm-community --classic
