class Sfh < Formula
  desc "Chain AI CLI agents and commands into YAML-defined flows"
  homepage "https://github.com/Aero123421/SimpleFlowHarness"
  version "1.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Aero123421/SimpleFlowHarness/releases/download/v1.4.0/sfh-macos-arm64.tar.gz"
      sha256 "cb1978323c72e63ac2289802ea176a5b3f2c2506d8fccd053f852cd50b011bbe"
    else
      url "https://github.com/Aero123421/SimpleFlowHarness/releases/download/v1.4.0/sfh-macos-x64.tar.gz"
      sha256 "871ac173ea88fef66e0068947facd70ad7bc10a83d622f182a2e9f5587a952a9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Aero123421/SimpleFlowHarness/releases/download/v1.4.0/sfh-linux-arm64.tar.gz"
      sha256 "a021d18826fb943ee9978081517d80435018b9cbcb899727833af46e53998bd1"
    else
      url "https://github.com/Aero123421/SimpleFlowHarness/releases/download/v1.4.0/sfh-linux-x64.tar.gz"
      sha256 "8c8113e140c57c3c8e71409f486b2ab972f990e83472e0086d5700b5a8432248"
    end
  end

  def install
    bin.install "sfh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sfh --version")
  end
end
