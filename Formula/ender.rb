class Ender < Formula
  desc "Minecraft instances, mods and servers from the command line"
  homepage "https://github.com/fatlard1993/ender-launcher"
  version "0.1.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.10/ender-darwin-arm64"
      sha256 "ed0a1092564f4b1addb7899b85b30ddc4aecf76ca1ca95de85334f80dbbfe5f4"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.10/ender-darwin-x64"
      sha256 "87a6dbe564c3a94aa9feb967a022ffc32c19fd59ab459e11eaadd3b6360fd822"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.10/ender-linux-arm64"
      sha256 "e2538d545d2368fa96de50134fa7e4f2ece52235ef2de263c9dc8c968e0ddafa"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.10/ender-linux-x64"
      sha256 "5bbe1b9475efb8c54c0cbf85d3a85dd0bc3ad2c78b4fcdf5be46dcc3d9f58d04"
    end
  end

  def install
    bin.install Dir["ender-*"].first => "ender"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ender --version")
  end
end
