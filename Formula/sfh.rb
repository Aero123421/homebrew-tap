class Sfh < Formula
  desc "Chain AI CLI agents and commands into YAML-defined flows"
  homepage "https://github.com/Aero123421/SimpleFlowHarness"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Aero123421/SimpleFlowHarness/releases/download/v1.2.0/sfh-macos-arm64.tar.gz"
      sha256 "3da51414904cc233cc6b9d97c25c3b34a80c7739bd6b524dc31e08ff2427508a"
    else
      url "https://github.com/Aero123421/SimpleFlowHarness/releases/download/v1.2.0/sfh-macos-x64.tar.gz"
      sha256 "004edfce46bee847f495b9e4baa871ee1186dc07d4653e0545019af4a6c4e5ee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Aero123421/SimpleFlowHarness/releases/download/v1.2.0/sfh-linux-arm64.tar.gz"
      sha256 "9a0cabc932e7deaa2c5f66b58fad74b4b1c840e1ec2228b905cf5a91802d9a73"
    else
      url "https://github.com/Aero123421/SimpleFlowHarness/releases/download/v1.2.0/sfh-linux-x64.tar.gz"
      sha256 "ae5f2e058fbfd07057b0e5d51ecc869dd2cfbb614c5c278982489b40c410e8c7"
    end
  end

  def install
    bin.install "sfh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sfh --version")
  end
end
