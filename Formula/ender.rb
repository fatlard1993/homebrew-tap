class Ender < Formula
  desc "Minecraft instances, mods and servers from the command line"
  homepage "https://github.com/fatlard1993/ender-launcher"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.5/ender-darwin-arm64"
      sha256 "2c7d60108a36a59173179854d8ee6d5b65d71567c7fe15265475063f81073009"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.5/ender-darwin-x64"
      sha256 "b7f8cca16d61b609af47e41e9c8592452b17a79cef3655b51a05f5dd2aab5b67"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.5/ender-linux-arm64"
      sha256 "87909f196f15218f97197de476e8694e95afe1bfd67a18ec60d5195bf12da9e1"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.5/ender-linux-x64"
      sha256 "37354eaa0da2d35a20f5cb89c2b50a58d71a287881cfecd3011d7b2ad1d97aca"
    end
  end

  def install
    bin.install Dir["ender-*"].first => "ender"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ender --version")
  end
end
