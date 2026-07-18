class Kupo < Formula
  desc "Fast, lightweight & configurable chain-index for Cardano."
  homepage "https://cardanosolutions.github.io/kupo"
  version "2.12.0"
  license "MPL-2.0"

  uses_from_macos "bzip2"
  uses_from_macos "libffi"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/kupo/releases/download/v2.12/kupo-v2.12.0-aarch64-macos.zip"
      sha256 "d4fe86fade5209533aae20958ffdc23802cb8531b8c44dce9aed215b97132c57"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/kupo/releases/download/v2.12/kupo-v2.12.0-aarch64-linux.zip"
      sha256 "f27289ce54703bff7bf28e6c2edaca2d3efbf8a50605bf98ad20fee59de988ae"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CardanoSolutions/kupo/releases/download/v2.12/kupo-v2.12.0-x86_64-linux.zip"
      sha256 "888b5c26c0fbada7af75ba6542820b76249d79e06ac6faf6497adad5023c6a3b"
    end
  end

  def install
    bin.install "bin/kupo"
  end
end
