class Tidypath < Formula
  desc "Tidy up PATH and PATH-like strings."
  homepage "https://github.com/jneu/tidypath"
  url "https://github.com/jneu/tidypath/releases/download/v0.1.2/tidypath-0.1.2.tar.gz"
  sha256 "4b7521b267b63037db936a87b082b60736ca9fde498f1861fcfd557d7ff169e2"

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
