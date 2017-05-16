class Tidypath < Formula
  desc "Tidy up PATH and PATH-like strings."
  homepage "https://github.com/jneu/tidypath"
  url "https://github.com/jneu/tidypath/files/979811/tidypath-0.1.0.tar.gz"
  sha256 "87b7ba5a4d1b19d8bc59f313333e3132951da943964cd67fb439ac1d51e02679"

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
