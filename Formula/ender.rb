class Ender < Formula
  desc "Minecraft instances, mods and servers from the command line"
  homepage "https://github.com/fatlard1993/ender-launcher"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.2.0/ender-darwin-arm64"
      sha256 "5e9c8b62373d0d27a20e4e111295884face9b1317b55006fc58e136f0be221eb"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.2.0/ender-darwin-x64"
      sha256 "1c3e2dc024bfee8ad9f3e7cacfd96b3afb5902c97c9582d7d59d81939793a9cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.2.0/ender-linux-arm64"
      sha256 "78dffee869f4f2bf98f91db062a73d58bdeb402b02c500d7eda85ac0253b8b57"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.2.0/ender-linux-x64"
      sha256 "078572ec88fd82fd2cbaa2b96b2b359fbdcaf8e03f63493c3950fdd28a238492"
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
