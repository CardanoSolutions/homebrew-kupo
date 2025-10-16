class Ogmios < Formula
  desc "A WebSocket JSON/RPC bridge for Cardano."
  homepage "https://ogmios.dev"
  version "6.14.0"
  license "MPL-2.0"

  uses_from_macos "bzip2"
  uses_from_macos "libffi"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.14.0/ogmios-v6.14.0-aarch64-macos.zip"
      sha256 "6a357ebc39307b1e243f1ea15a94002ac6574bd72d562b0be346aaeeb4b7164b"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.14.0/ogmios-v6.14.0-aarch64-linux.zip"
      sha256 "dd5e6ff8ea2d5b33e1b4eb4fe2fd49433b0708caf73b85d43ab173dab6c1a6c2"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.14.0/ogmios-v6.14.0-x86_64-linux.zip"
      sha256 "63633ac44a2e284885e08e6ce0d8012696739e057d0a1fd7383d3d750c5d2027"
    end
  end

  def install
    bin.install "bin/ogmios"
  end
end
