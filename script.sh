set -ex

wget -q 'https://drive.usercontent.google.com/download?id=1c44rqqZDw6-jJDKpgNHCJBopUiHFAXZG&export=download&confirm=t' -O sourcecode.zip
unzip sourcecode.zip
tar -xzf Kernel.tar.gz
cd kernel-5.10
git clone https://gitlab.com/kalilinux/nethunter/build-scripts/kali-nethunter-kernel-builder
cd kali-nethunter-kernel-builder/
sudo apt-get update
sudo apt-get install -y flex
./build.sh