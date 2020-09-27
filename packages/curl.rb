require 'package'

class Curl < Package
  description 'Command line tool and library for transferring data with URLs.'
  homepage 'https://curl.haxx.se/'
  version '7.70.0'
  compatibility 'all'
  source_url 'https://curl.haxx.se/download/curl-7.70.0.tar.xz'

  binary_url ({
     x86_64: 'https://raa.dynu.net/curl-7.70.0-chromeos-x86_64.tar.xz',
  })
  binary_sha256 ({
    aarch64: '58505d5a912a20dcc1b09472513e83bcff81fa0aa5492824a928d8aad1a6f588',
     armv7l: '58505d5a912a20dcc1b09472513e83bcff81fa0aa5492824a928d8aad1a6f588',
       i686: '545849d0ab122536a49978919b4ba1455a3f3af68fff85ebe3ad603111e93e56',
  })

  depends_on 'groff' => :build
  depends_on 'brotli'
  depends_on 'libmetalink'
  depends_on 'libnghttp2'
  depends_on 'libtirpc'
  depends_on 'openldap'
  depends_on 'rtmpdump'

  def self.build
    ENV['LIBRARY_PATH'] = CREW_LIB_PREFIX
    ENV['TMPDIR'] = "#{CREW_PREFIX}/tmp"
    system "./configure #{CREW_OPTIONS} --disable-maintainer-mode --enable-libcurl-option --with-libmetalink \
--disable-static --disable-debug --with-libssh2 --with-nghttp2 --with-brotli --enable-ldap --with-ssl"
    system 'make'
  end

  def self.install
    system 'make', "DESTDIR=#{CREW_DEST_DIR}", 'install'
  end

end
