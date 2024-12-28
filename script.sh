wget -q 'https://drive.usercontent.google.com/download?id=1NNeoUX6T4UMeodwbhA02teTFyzuUmNlO&export=download&confirm=t' -O sourcecode.zip
unzip sourcecode.zip
tar -xf Kernel.tar.xz
cd kernel-5.10
git clone https://gitlab.com/kalilinux/nethunter/build-scripts/kali-nethunter-kernel-builder
cd kali-nethunter-kernel-builder/
./build.sh