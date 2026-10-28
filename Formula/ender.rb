class Ender < Formula
  desc "Minecraft instances, mods and servers from the command line"
  homepage "https://github.com/fatlard1993/ender-launcher"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.2/ender-darwin-arm64"
      sha256 "cf2737579553c7f403828cc45c6ed09bb196f79df141a83aa2d844d882beddf8"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.2/ender-darwin-x64"
      sha256 "4198a75157c1b8c5aa8abc3190055d35e5ee9da121414e74c5db7f83689b04b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.2/ender-linux-arm64"
      sha256 "423a781091a626425b69ead290f52472f9dc4fe9c06ddb0a101e1762fbb040a3"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.2/ender-linux-x64"
      sha256 "fee47f0208328d3dfb97863f0f5761416b4c9edccf27466b77be3956f67812e8"
    end
  end

  def install
    bin.install Dir["ender-*"].first => "ender"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ender --version")
  end
end
