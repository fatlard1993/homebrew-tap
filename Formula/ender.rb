class Ender < Formula
  desc "Minecraft instances, mods and servers from the command line"
  homepage "https://github.com/fatlard1993/ender-launcher"
  version "0.1.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.14/ender-darwin-arm64"
      sha256 "87e08ce6d67c51a9db8e025e8241d61dcc549160cb91d9cda4d611745f3b2e3b"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.14/ender-darwin-x64"
      sha256 "eb8cdaa2818e65679b5a5540f62625e28b4494dfb703e513d711b7cbcb8bf6a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.14/ender-linux-arm64"
      sha256 "1864f2d65edcbe3cabc0d122e420c4645c71d1c334a7400faa6b0adfab934821"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.14/ender-linux-x64"
      sha256 "0ad77176a733822a479e6835d3782778afe7e57c2658e553b20b22542ff063c7"
    end
  end

  def install
    bin.install Dir["ender-*"].first => "ender"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ender --version")
  end
end
