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

echo "installing intellij idea"
sudo snap install intellij-idea-community --classic

echo "installing pycharm"
sudo snap install pycharm-community --classic
