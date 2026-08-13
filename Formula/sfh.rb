class Sfh < Formula
  desc "Chain AI CLI agents and commands into YAML-defined flows"
  homepage "https://github.com/Aero123421/SimpleFlowHarness"
  version "1.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Aero123421/SimpleFlowHarness/releases/download/v1.6.1/sfh-macos-arm64.tar.gz"
      sha256 "2ac1cd175e05c9f70396f25659fa5a85fa7ca36a0759877c758885d7f11c3599"
    else
      url "https://github.com/Aero123421/SimpleFlowHarness/releases/download/v1.6.1/sfh-macos-x64.tar.gz"
      sha256 "1c68d01a8bb91beea38e63fc8acd9ab8c1bd69fd557e10f3e57a422990483c40"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Aero123421/SimpleFlowHarness/releases/download/v1.6.1/sfh-linux-arm64.tar.gz"
      sha256 "64089226d3b928bc4bd98cb6a8fd2ca4177471f27e7a6bf4b7e9c056a4b1cef1"
    else
      url "https://github.com/Aero123421/SimpleFlowHarness/releases/download/v1.6.1/sfh-linux-x64.tar.gz"
      sha256 "f1daf8623c2b8f424a93b5d7926f130a551e9e956f133fbf8558cc0f1f99a3c5"
    end
  end

  def install
    bin.install "sfh"
    pkgshare.install "release-resources.txt",
                     "AGENTS.md",
                     "CHANGELOG.md",
                     "CONTRIBUTING.md",
                     "LICENSE",
                     "README.ja.md",
                     "README.md",
                     "SECURITY.md",
                     "SUPPORT.md",
                     "docs",
                     "examples",
                     "schema",
                     "skills",
                     "tests"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sfh --version")
    assert_predicate pkgshare/"release-resources.txt", :file?
    assert_predicate pkgshare/"schema/flow.schema.json", :file?
    assert_predicate pkgshare/"examples/mini-check.yaml", :file?
    assert_predicate pkgshare/"skills/sfh-flow-design/SKILL.md", :file?
  end
end
