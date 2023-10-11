clear
echo "updating system"
sudo pacman -Syu
sudo pacman -Syuu

echo "installing java"
sudo pacman -S jre-openjdk
sudo pacman -S jdk-openjdk

echo "installing node js"
sudo pacman -S nodejs npm

echo "installing vscode"
sudo pacman -S code

echo "installing ruby"
sudo pacman -S ruby

echo "installing rust"
sudo pacman -S rust

echo "installing snap"
sudo pacman -S snapd
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

echo "installing ant"
sudo snap install ant --classic

echo "installing intellij idea"
sudo snap install intellij-idea-community --classic

echo "installing pycharm"
sudo snap install pycharm-community --classic



