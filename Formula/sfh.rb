class Sfh < Formula
  desc "Chain AI CLI agents and commands into YAML-defined flows"
  homepage "https://github.com/Aero123421/SimpleFlowHarness"
  version "1.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Aero123421/SimpleFlowHarness/releases/download/v1.1.4/sfh-macos-arm64.tar.gz"
      sha256 "77e1f1e0fa9715c6acfb6300a908982777e9a2646dd8ea8e159cf9296b2ea922"
    else
      url "https://github.com/Aero123421/SimpleFlowHarness/releases/download/v1.1.4/sfh-macos-x64.tar.gz"
      sha256 "c2a6e9898b7f7d79dd2bac1d884dfe1370f6583cb8b3a480f8575a81c23f03a9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Aero123421/SimpleFlowHarness/releases/download/v1.1.4/sfh-linux-arm64.tar.gz"
      sha256 "c9ff0d1ec881e0db334d812e6f9789420cc064234610586d917ae541f1aaf901"
    else
      url "https://github.com/Aero123421/SimpleFlowHarness/releases/download/v1.1.4/sfh-linux-x64.tar.gz"
      sha256 "c98870f860a88ca5d6262f4f278c13cda9f2aa4070d43f7c9f020285eac60da0"
    end
  end

  def install
    bin.install "sfh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sfh --version")
  end
end
