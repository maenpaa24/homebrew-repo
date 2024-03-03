cask 'dnie-spain' do
  version '1.6.8'
  name 'DNIe'
  homepage 'https://www.dnielectronico.es/PortalDNIe/'

  cpu = Hardware::CPU.arm? ? 'arm64' : 'x64'

  if Hardware::CPU.arm?
   url "https://www.dnielectronico.es/descargas/software_MACOS/libpkcs11-dnie-#{version}_arm.pkg", user_agent: 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36'
   sha256 '1eb6ef2117953ff787f8a6da6f26c2e9523ebcc2d91ad991c5350a8faab521ed'
   depends_on macos: '>= :big_sur'
   pkg "libpkcs11-dnie-#{version}_arm.pkg"
 else
   url "https://www.dnielectronico.es/descargas/software_MACOS/libpkcs11-dnie-#{version}.pkg", user_agent: 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36'
   sha256 '7f4ff38a8747f0c161f9a684a566c1727368245484dfef150ac18c912eddef4b'
   depends_on macos: '>= :mojave'
   pkg "libpkcs11-dnie-#{version}.pkg"
  end

  uninstall pkgutil: 'libpkcs11-dnie'
end
