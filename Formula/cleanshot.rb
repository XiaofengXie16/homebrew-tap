class Cleanshot < Formula
  desc "CLI for CleanShot X on macOS"
  homepage "https://github.com/XiaofengXie16/cleanshot-cli"
  version "0.1.0"

  on_arm do
    url "https://github.com/XiaofengXie16/cleanshot-cli/releases/download/v0.1.0/cleanshot-v0.1.0-darwin-arm64.tar.gz"
    sha256 "4e884ee9b8a820396283c4f5a1864292649a1e60f3e7a596cf14bffe20d20c09"
  end

  on_intel do
    url "https://github.com/XiaofengXie16/cleanshot-cli/releases/download/v0.1.0/cleanshot-v0.1.0-darwin-amd64.tar.gz"
    sha256 "31274a35a160edccdd1c578ba89b653cc4feca593fcad6933f5caee947720074"
  end

  def install
    if Hardware::CPU.arm?
      bin.install "cleanshot-darwin-arm64" => "cleanshot"
    else
      bin.install "cleanshot-darwin-amd64" => "cleanshot"
    end
  end

  test do
    assert_match "cleanshot", shell_output("#{bin}/cleanshot --help")
  end
end
