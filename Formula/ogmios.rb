class Ogmios < Formula
  desc "A WebSocket JSON/RPC bridge for Cardano."
  homepage "https://ogmios.dev"
  version "7.0.0"
  license "MPL-2.0"

  uses_from_macos "bzip2"
  uses_from_macos "libffi"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v7.0.0/ogmios-v7.0.0-aarch64-macos.zip"
      sha256 "504f593852dda87569d6252e18d0d3a644e5c091186df7a4a3791d9ceda2f280"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v7.0.0/ogmios-v7.0.0-aarch64-linux.zip"
      sha256 "bbb553d5a7acecbf309dd3da301a03f7b8d0c9e4c62338551b5f1308171c3787"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v7.0.0/ogmios-v7.0.0-x86_64-linux.zip"
      sha256 "a4d07112dbbacf9a302970b6f6f7d35aa06c9a9edf013dff5547f6a7afee295e"
    end
  end

  def install
    bin.install "bin/ogmios"
  end
end
