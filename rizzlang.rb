class Rizzlang < Formula
  desc "Rizz++ - small GenZ-style toy language"
  homepage "https://github.com/Sriyush/RizzLang"
  url "https://github.com/Sriyush/RizzLang/releases/download/v1.0.12/rizz"
  sha256 "fdcfd377e5168396b1dca7505bad2a9e0568ced53ff1896896d621dc8811addc"
  version "1.0.12"

  def install
    bin.install "rizz"
  end

  test do
    system "#{bin}/rizz", "--version"
  end
end
