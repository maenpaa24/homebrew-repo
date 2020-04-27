cask 'dnie-spain' do
  version '1.5.3'
  sha256 '1668d60a1ec8393354f7a667db2d9f86b07e150060d36729a89189d79af1e9ff'

  url "https://www.dnielectronico.es/descargas/software_MACOS/libpkcs11-dnie-#{version}.pkg", user_agent: 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36'
  name 'DNIe'
  homepage 'https://www.dnielectronico.es/PortalDNIe/'

  depends_on macos: '>= :catalina'

  pkg "libpkcs11-dnie-#{version}.pkg"

  uninstall pkgutil: 'libpkcs11-dnie'
end
