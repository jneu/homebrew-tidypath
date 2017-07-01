class Tidypath < Formula
  desc "Tidy up PATH and PATH-like strings."
  homepage "https://github.com/jneu/tidypath"
  url "https://github.com/jneu/tidypath/releases/download/v0.1.5/tidypath-0.1.5.tar.gz"
  sha256 "0e49f2194db774ce1d9248fa4ce34671bc899f11b38c15276e4538f47d6bd55d"

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "#{bin}/tidypath", "--version"
  end
end
