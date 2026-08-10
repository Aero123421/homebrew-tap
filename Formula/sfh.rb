class Sfh < Formula
  desc "Chain AI CLI agents and commands into YAML-defined flows"
  homepage "https://github.com/Aero123421/SimpleFlowHarness"
  version "1.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Aero123421/SimpleFlowHarness/releases/download/v1.5.1/sfh-macos-arm64.tar.gz"
      sha256 "1a3c07f79c99c925c66f0cdfb7b6d42ec97b88be9f3241d6429d4dbdb8198e5f"
    else
      url "https://github.com/Aero123421/SimpleFlowHarness/releases/download/v1.5.1/sfh-macos-x64.tar.gz"
      sha256 "c3e550f05f3d9124dac8a3783f01c82d1354ec1e33c96821695da7d7f844f44e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Aero123421/SimpleFlowHarness/releases/download/v1.5.1/sfh-linux-arm64.tar.gz"
      sha256 "393641f23831b5d8c725f40aa5c30522951ba1e81c60f11fe39913fb50803bea"
    else
      url "https://github.com/Aero123421/SimpleFlowHarness/releases/download/v1.5.1/sfh-linux-x64.tar.gz"
      sha256 "9f0780598855d02b9fe585c3b6f0f552df0902f355fd6e8f0e1b64450bacd393"
    end
  end

  def install
    bin.install "sfh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sfh --version")
  end
end
