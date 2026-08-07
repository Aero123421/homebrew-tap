class Sfh < Formula
  desc "Chain AI CLI agents and commands into YAML-defined flows"
  homepage "https://github.com/Aero123421/SimpleFlowHarness"
  version "1.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Aero123421/SimpleFlowHarness/releases/download/v1.1.5/sfh-macos-arm64.tar.gz"
      sha256 "ecb222d7171da0d61e57bfcba3403060fc96c9aa694e654ed0d0541d4dfd0ad4"
    else
      url "https://github.com/Aero123421/SimpleFlowHarness/releases/download/v1.1.5/sfh-macos-x64.tar.gz"
      sha256 "310742384f4f3eb66b0f2f8414f28e09b5530a0c224c85f7a67bda35edfee474"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Aero123421/SimpleFlowHarness/releases/download/v1.1.5/sfh-linux-arm64.tar.gz"
      sha256 "2dd510b14a5ca1f532d51c1589b44aaf56d9ca2cd83373d3b951163a2641696d"
    else
      url "https://github.com/Aero123421/SimpleFlowHarness/releases/download/v1.1.5/sfh-linux-x64.tar.gz"
      sha256 "0fe39f330d983f8fb95d44045e85e415c608f3ffa4ed77f2d128d572922fa8eb"
    end
  end

  def install
    bin.install "sfh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sfh --version")
  end
end
