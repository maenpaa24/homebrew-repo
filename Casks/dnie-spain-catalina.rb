cask 'dnie-spain-catalina' do
  version '1.6.1'
  sha256 'bc9a93376229d08213ebab7e71e00a956bc5bfe9602ca2d401e66266fd8e6f67'

  url "https://www.dnielectronico.es/descargas/software_MACOS/libpkcs11-dnie-#{version}.pkg", user_agent: 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36'
  name 'DNIe'
  homepage 'https://www.dnielectronico.es/PortalDNIe/'

  depends_on macos: '>= :catalina'

  pkg "libpkcs11-dnie-#{version}.pkg"

  uninstall pkgutil: 'libpkcs11-dnie'
end
