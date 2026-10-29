class Ender < Formula
  desc "Minecraft instances, mods and servers from the command line"
  homepage "https://github.com/fatlard1993/ender-launcher"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.7/ender-darwin-arm64"
      sha256 "5f2efa92554e0a130dba3689e3728b4659d2a85c2b09c1eb30bb9b93801eddad"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.7/ender-darwin-x64"
      sha256 "33ad068889cbd235429480c97485bc5e56e1d6a949f6ab92a2cd24cba0242ec5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.7/ender-linux-arm64"
      sha256 "b07fb949dbb6717790a65946b13a5bd7506a305d87d98392cf68a9e70577081a"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.7/ender-linux-x64"
      sha256 "b80e6a5c724e203598ac90484f093970da3ff59f08161eb99662ee331c471c8b"
    end
  end

  def install
    bin.install Dir["ender-*"].first => "ender"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ender --version")
  end
end
