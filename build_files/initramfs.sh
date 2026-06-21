# Configure dracut to include Plymouth
mkdir -p /etc/dracut.conf.d/
cat > /etc/dracut.conf.d/plymouth.conf << 'EOF'
add_dracutmodules+=" plymouth "
hostonly=no
EOF

# Regenerate initramfs with Plymouth
KERNEL_VERSION=$(rpm -q --queryformat="%{evr}.%{arch}" kernel-core)
export DRACUT_NO_XATTR=1
/usr/bin/dracut --no-hostonly --kver "${KERNEL_VERSION}" --reproducible -v -f "/usr/lib/modules/${KERNEL_VERSION}/initramfs.img"
chmod 0600 "/usr/lib/modules/${KERNEL_VERSION}/initramfs.img"