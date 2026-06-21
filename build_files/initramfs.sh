# Configure dracut to include Plymouth
mkdir -p /etc/dracut.conf.d/
cat > /etc/dracut.conf.d/plymouth.conf << 'EOF'
add_dracutmodules+=" plymouth "
hostonly=no
EOF

plymouth-set-default-theme bgrt

dracut --force --kver $(rpm -q kernel --queryformat '%{VERSION}-%{RELEASE}.%{ARCH}')
