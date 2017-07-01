class Tidypath < Formula
  desc "Tidy up PATH and PATH-like strings."
  homepage "https://github.com/jneu/tidypath"
  url "https://github.com/jneu/tidypath/releases/download/v0.1.4/tidypath-0.1.4.tar.gz"
  sha256 "d231c1e5a6e498006ff51897169ac18268109369dcf8a69eead9a515fa0fce89"

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
