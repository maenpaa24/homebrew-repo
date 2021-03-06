cask 'dnie-spain-bigsur' do
  version '1.6.3'
  sha256 '9341cd73e7171542f8a5e1bf88c584a2065cfb07a25666230d7647253e5fdb4e'

  url "https://www.dnielectronico.es/descargas/software_MACOS/libpkcs11-dnie-#{version}.pkg", user_agent: 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36'
  name 'DNIe'
  homepage 'https://www.dnielectronico.es/PortalDNIe/'

  depends_on macos: '>= :big_sur'

  pkg "libpkcs11-dnie-#{version}.pkg"

  uninstall pkgutil: 'libpkcs11-dnie'
end
