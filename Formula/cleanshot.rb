class Cleanshot < Formula
  desc "CLI for CleanShot X on macOS"
  homepage "https://github.com/XiaofengXie16/cleanshot-cli"
  version "0.0.0"

  # Placeholder — updated automatically on each release by GitHub Actions
  on_arm do
    url "https://github.com/XiaofengXie16/cleanshot-cli/releases/download/v0.0.0/cleanshot-v0.0.0-darwin-arm64.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end

  on_intel do
    url "https://github.com/XiaofengXie16/cleanshot-cli/releases/download/v0.0.0/cleanshot-v0.0.0-darwin-amd64.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
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
