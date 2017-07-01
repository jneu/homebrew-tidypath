class Tidypath < Formula
  desc "Tidy up PATH and PATH-like strings."
  homepage "https://github.com/jneu/tidypath"
  url "https://github.com/jneu/tidypath/releases/download/v0.1.3/tidypath-0.1.3.tar.gz"
  sha256 "6a667d1abeb60d1df315bf432115d4c92bb1ba342b8cde225e267f96d6def689"

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
