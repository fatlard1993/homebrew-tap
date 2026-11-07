class Ender < Formula
  desc "Minecraft instances, mods and servers from the command line"
  homepage "https://github.com/fatlard1993/ender-launcher"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.3.0/ender-darwin-arm64"
      sha256 "f2f9bf8f3b8c79ab5e04b4e189e206515b84a00d6d5e54775f9007a6d0fa2134"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.3.0/ender-darwin-x64"
      sha256 "3ccea22379a6df6f19b938088059eacd95494269810977300ce14c9f3c97b5f8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.3.0/ender-linux-arm64"
      sha256 "1db6ef2df96ecd1a633ab3843471dfb36ec6535093801117aac42ec463943bf2"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.3.0/ender-linux-x64"
      sha256 "310969c58242eea7317c87180159bafe0d6812b76af83da726b36937d72c51d9"
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
