set -ex

wget -q 'https://drive.usercontent.google.com/download?id=1c44rqqZDw6-jJDKpgNHCJBopUiHFAXZG&export=download&confirm=t' -O sourcecode.zip
unzip sourcecode.zip
tar -xzf Kernel.tar.gz
cd kernel-5.10
git clone https://gitlab.com/kalilinux/nethunter/build-scripts/kali-nethunter-kernel-builder
cd kali-nethunter-kernel-builder/
sudo apt-get update
sudo apt-get install -y flex

cat <<'EOF' > local.config
CROSS_COMPILE_SRC="https://kali.download/nethunter-images/toolchains/google_aarch64-standalone-oreo-4.9.tar.xz"

# IMAGE_NAME=Image.gz

# DO_DTB=true

# KERNEL_IMAGE=$KDIR/arch/arm64/boot/$IMAGE_NAME
# KERNEL_OUT="$KDIR"
EOF

./build.sh
