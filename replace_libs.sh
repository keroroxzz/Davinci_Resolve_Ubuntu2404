echo "This script automatically download libs that is not compatible for DavinciResolve 18.6.6 on Ubuntu 24.04"
echo "Please execute this script AFTER Davinci Resolve is installed and can not be opened via the icon!"
echo ""
echo "Grab libs from Ubuntu22.04 jammy"
mkdir davinci_resolve_tmp
cd davinci_resolve_tmp
echo "Download libpango-1.0..."
wget -nc http://mirrors.kernel.org/ubuntu/pool/main/p/pango1.0/libpango-1.0-0_1.50.6+ds-2_amd64.deb
echo "Download libpangoft-1.0..."
wget -nc http://mirrors.kernel.org/ubuntu/pool/main/p/pango1.0/libpangoft2-1.0-0_1.50.6+ds-2_amd64.deb
echo "Download libpangocairo-1.0..."
wget -nc http://mirrors.kernel.org/ubuntu/pool/main/p/pango1.0/libpangocairo-1.0-0_1.50.6+ds-2_amd64.deb
echo "Download libgdk-pixbuf-2.0..."
wget -nc http://security.ubuntu.com/ubuntu/pool/main/g/gdk-pixbuf/libgdk-pixbuf-2.0-0_2.42.8+dfsg-1ubuntu0.3_amd64.deb

echo "decompress lib files..."
dpkg-deb -x libpango-1.0-0_1.50.6+ds-2_amd64.deb .
dpkg-deb -x libpangoft2-1.0-0_1.50.6+ds-2_amd64.deb .
dpkg-deb -x libpangocairo-1.0-0_1.50.6+ds-2_amd64.deb .
dpkg-deb -x libgdk-pixbuf-2.0-0_2.42.8+dfsg-1ubuntu0.3_amd64.deb .

echo "Please backup the following file in /opt/resolve/libs/"
echo $(ls usr/lib/x86_64-linux-gnu/ | grep "lib")
echo "===============Warning=============="
echo "It will overwrite libs in DavinciResolve, continue? (y/n)"
read yn
if [ "$yn" == "y" ]
then
  echo "Copy libs to DavinciResolve..."
  cp usr/lib/x86_64-linux-gnu/lib* /opt/resolve/libs/
fi

echo "Done! You can remove the folder davinci_resolve_tmp!"
