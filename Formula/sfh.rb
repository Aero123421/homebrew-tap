class Sfh < Formula
  desc "Chain AI CLI agents and commands into YAML-defined flows"
  homepage "https://github.com/Aero123421/SimpleFlowHarness"
  version "1.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Aero123421/SimpleFlowHarness/releases/download/v1.6.0/sfh-macos-arm64.tar.gz"
      sha256 "0e243b5a592c9331803cba838718ac637bbe71a9159a7257a8e0340cc30ee0aa"
    else
      url "https://github.com/Aero123421/SimpleFlowHarness/releases/download/v1.6.0/sfh-macos-x64.tar.gz"
      sha256 "69145f93cbe63c2749347471ccc36332f3668305b5d769da975ded3982ae0cf7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Aero123421/SimpleFlowHarness/releases/download/v1.6.0/sfh-linux-arm64.tar.gz"
      sha256 "bf7b9adbbd0f2a14a43426bc5d799e2e47c097ca976fd6d6a5bc6acc4cc18dc3"
    else
      url "https://github.com/Aero123421/SimpleFlowHarness/releases/download/v1.6.0/sfh-linux-x64.tar.gz"
      sha256 "059032f6dbe6179221b0f40fe5b970de0c8c0dbccc03dfe3ca8210c7b8c16083"
    end
  end

  def install
    bin.install "sfh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sfh --version")
  end
end
