require 'formula'

class Vorbisgain < Formula
  url 'http://sjeng.org/ftp/vorbis/vorbisgain-0.37.tar.gz'
  homepage 'http://sjeng.org/vorbisgain.html'
  sha1 'bd79764a83a8ee327df85c538ec798a6d3f240be'

  depends_on 'libvorbis'
  depends_on 'libogg'

  def install
    system "./configure", "--prefix=#{prefix}", "--mandir=#{man}"
    system "make install"
  end
end
