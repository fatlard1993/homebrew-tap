class Ender < Formula
  desc "Minecraft instances, mods and servers from the command line"
  homepage "https://github.com/fatlard1993/ender-launcher"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.0/ender-darwin-arm64"
      sha256 "89f72ff4545509d55b6943833c5e081fd54fa5dac742d46bb6650f2795fdf4c0"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.0/ender-darwin-x64"
      sha256 "5cd15c7327edb949c7de4e6bc64a850e6ff224cb622d1a1a0d52a9f73c6374c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.0/ender-linux-arm64"
      sha256 "e13491666542e8eb6afb170e6f91dc231757b1253e872fcd8d658b71fd0f9ed5"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.0/ender-linux-x64"
      sha256 "2eb674c42fa09463c533c41b541c8ce2a535b79df9c051348ec650a0cfa32cd7"
    end
  end

  def install
    bin.install Dir["ender-*"].first => "ender"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ender --version")
  end
end
