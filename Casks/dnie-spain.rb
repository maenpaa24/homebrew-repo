cask 'dnie-spain' do
  version '1.6.7'
  name 'DNIe'
  homepage 'https://www.dnielectronico.es/PortalDNIe/'

  cpu = Hardware::CPU.arm? ? 'arm64' : 'x64'

  url "https://www.dnielectronico.es/descargas/software_MACOS/libpkcs11-dnie-#{version}_#{cpu}.pkg", user_agent: 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36'

  if Hardware::CPU.arm?
   sha256 'c5c06f63bb9295692585cd34a93825aa1b027a278f04dc01b690f9cfc6298bc6'
   depends_on macos: '>= :big_sur'
 else
   sha256 '9958018827196f7de45f0cbc88b1eb18edf5aace75827083df9a12bd61754fe6'
   depends_on macos: '>= :mojave'
  end

  pkg "libpkcs11-dnie-#{version}_#{cpu}.pkg"

  uninstall pkgutil: 'libpkcs11-dnie'
end
