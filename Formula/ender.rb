class Ender < Formula
  desc "Minecraft instances, mods and servers from the command line"
  homepage "https://github.com/fatlard1993/ender-launcher"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.2.3/ender-darwin-arm64"
      sha256 "8fa56d36a64a0f62b5bac7635b9e04ce5a769bdbf5d6e381c4e53bd52f05e086"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.2.3/ender-darwin-x64"
      sha256 "179af91bc444d0e8b2474bd26c9e633da9d06b76ae2cd181a861063b2e82378c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.2.3/ender-linux-arm64"
      sha256 "6eb60dc396cadeaf0b0c7c3ee2b3db65a2e1c44431f311f25c8750e1286483ab"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.2.3/ender-linux-x64"
      sha256 "0a461e1dca14f650905bcd286e4c6b0b454e237875688f2f42dbb5e602612571"
    end
  end

  def install
    bin.install Dir["ender-*"].first => "ender"
  end

  def caveats
    <<~EOS
      Start with: ender new survival, then ender launch
      ender desktop adds an Ender icon to your app menu that opens ender web.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ender --version")
  end
end
