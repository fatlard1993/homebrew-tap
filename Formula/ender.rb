class Ender < Formula
  desc "Minecraft instances, mods and servers from the command line"
  homepage "https://github.com/fatlard1993/ender-launcher"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.2.2/ender-darwin-arm64"
      sha256 "ca4b6aa348fc7d1031bff3fbb3882fb31a4117a8833737ae536d77524a035691"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.2.2/ender-darwin-x64"
      sha256 "d5b1e27ae73fa22c6fd285f679fdeaddd5e7ec611473ef82baf2c25fa28f1de7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.2.2/ender-linux-arm64"
      sha256 "77166bbf3380b3eb67bd39c3957269f3f470dcb8f264cc3c9f6ff8a2d6762cc4"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.2.2/ender-linux-x64"
      sha256 "5c456af65d2f6a9c7a15e57d573d332810d2a519dda3ebd43f2e64901dd9a41f"
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
