# Maintainer: Your Name <youremail@domain.com>
#
#
pkgname=autotop-nohid
pkgver=1.0
pkgrel=1
pkgdesc="PowerTOP auto-tuning without power saving for HID devices"
arch=("x86_64")
url="https://wiki.archlinux.org/index.php/Powertop"
license=("FDL")
depends=("powertop" "systemd")
conflicts=("powertop-auto-tune")
_systemdunit="$pkgname.service"
_script="$pkgname.sh"
install="$pkgname.install"
source=($_systemdunit
        $_script)
md5sums=('64a46b5b3c128ebfbe98796735273016'
         '3f0e86ef42d9072665fb847cd21b2489')
# Update md5sums wih 'updpkgsums'
package() {
	install -Dpm 0744 $_script "$pkgdir/usr/share/$pkgname/$_script"
	install -Dpm 0644 $_systemdunit "$pkgdir/usr/lib/systemd/system/$_systemdunit"
} 
