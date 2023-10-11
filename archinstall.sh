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

echo "installing mongodb"
sudo pacman -Syu
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -sri
yay -S mongodb-bin
sudo systemctl start mongodb
sudo systemctl enable mongodb
cd ..

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



