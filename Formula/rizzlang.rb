class Rizzlang < Formula
  desc "Rizz++ - small GenZ-style toy language"
  homepage "https://github.com/Sriyush/RizzLang"
  url "https://github.com/Sriyush/RizzLang/releases/download/v1.0.14/rizz"
  # version "1.0.14"
  sha256 "f76dee4dcb874fbc8ea6dab094ee60771f8c2432fa3b841631c989ba8db1f78f"
  license "MIT"
  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    bin.install "rizz"
  end


  test do
    system "#{bin}/rizz", "--version"
  end
end
