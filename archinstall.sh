clear
echo "updating system"
sudo pacman -Syu
sudo pacman -Syuu

echo "installing curl and wget"
sudo pacman -S curl
sudo pacman -S wget

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

echo "installing mono"
sudo pacman -Sy mono

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

echo "installing mariadb"
pacman -Sy mariadb
mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
systemctl enable --now mariadb
systemctl status mariadb
sudo mysql_secure_installation

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

echo "installing dbeaver"
sudo snap install dbeaver-ce

echo "installing vlc"
sudo snap install vlc

echo "installing gimp"
sudo snap install gimp
