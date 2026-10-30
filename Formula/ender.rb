class Ender < Formula
  desc "Minecraft instances, mods and servers from the command line"
  homepage "https://github.com/fatlard1993/ender-launcher"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.8/ender-darwin-arm64"
      sha256 "f407019b248b1a1c0ce2b197475024532d485137ab123a4eedcbec2f9594595b"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.8/ender-darwin-x64"
      sha256 "a353f413539f1940279338894103d34f8fd1a477d9b0119840ab742b67ab044d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.8/ender-linux-arm64"
      sha256 "4fabb1617349fa549c9c0ae9dafbafe0523b50d3c11a66cd417a20bbe55b6540"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.8/ender-linux-x64"
      sha256 "ff779b4ce425284cebcabc028d448ca5019791fc90c57b27c59cbf0fc8a08e45"
    end
  end

  def install
    bin.install Dir["ender-*"].first => "ender"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ender --version")
  end
end
