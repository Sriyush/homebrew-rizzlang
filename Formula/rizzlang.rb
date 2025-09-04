class Rizzlang < Formula
  desc "Rizz++ - small GenZ-style toy language"
  homepage "https://github.com/Sriyush/RizzLang"
  url "https://github.com/Sriyush/RizzLang/archive/refs/tags/v1.0.16.tar.gz"
  sha256 "b27276deccee8fc78334e08d6c201e46552d5efb6ed07dc0d9e424df1726ba38"
  license "MIT"
  head "https://github.com/Sriyush/RizzLang.git", branch: "main"

  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "#{bin}/rizz", "--version"
  end
end
