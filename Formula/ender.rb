class Ender < Formula
  desc "Minecraft instances, mods and servers from the command line"
  homepage "https://github.com/fatlard1993/ender-launcher"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.4/ender-darwin-arm64"
      sha256 "babf7190a152e8a4e16269ac34bf8122ae3315e0ce309a8eb1dd27440bbed5e3"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.4/ender-darwin-x64"
      sha256 "d9143efec43af89d213d643f9c6652d4b75f9182b4c820db9eeac03c5ff474a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.4/ender-linux-arm64"
      sha256 "8e44f4eb926b9079fea1f06957957a47b6a86126db1860376ab25805f0435775"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.4/ender-linux-x64"
      sha256 "408659872022315042df120ac83f1d87889592fda68ce15114e35e48093b0f4d"
    end
  end

  def install
    bin.install Dir["ender-*"].first => "ender"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ender --version")
  end
end
