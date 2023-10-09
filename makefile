list:
  echo "which operating system"
  echo "1. arch linux => arch"

arch:
  echo "arch linux library installer"
  chmod +x archinstall.sh
  ./archinstall.sh

ubuntu:
  echo "ubuntu library installer"
  chmod +x ubuntu.sh
  ./ubuntu.sh

python:
  echo "python library installer"
  chmod +x python.sh
  ./python.sh
