# Maintainer: DecentM <decentm+aur@decentm.com>

pkgname=('bootsplash-theme-cupertino')
pkgver=1.0
pkgrel=0
arch=('x86_64')
pkgdesc="Simple Manjaro Bootsplash for a full OSX-like boot experience"
license=('GPL')
depends=()
optdepends=('bootsplash-systemd: for bootsplash functionality')
builddepends=('imagemagick')
options=('!libtool' '!emptydirs')

source=('bootsplash-packer'
  'bootsplash-cupertino.sh'
  'bootsplash-cupertino.initcpio_install'
  'logo.gif'
  'spinner.gif')

sha256sums=('SKIP'
  'SKIP'
  'SKIP'
  'SKIP'
  'SKIP')

build() {
  cd "$srcdir"
  sh ./bootsplash-cupertino.sh
}

package_bootsplash-theme-cupertino() {
  pkgdesc="Simple Manjaro Bootsplash for a full OSX-like boot experience"
  cd "$srcdir"

  install -Dm644 "$srcdir/bootsplash-cupertino" "$pkgdir/usr/lib/firmware/bootsplash-themes/cupertino/bootsplash"
  install -Dm644 "$srcdir/bootsplash-cupertino.initcpio_install" "$pkgdir/usr/lib/initcpio/install/bootsplash-cupertino"
}
