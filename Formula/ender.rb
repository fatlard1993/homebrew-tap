class Ender < Formula
  desc "Minecraft instances, mods and servers from the command line"
  homepage "https://github.com/fatlard1993/ender-launcher"
  version "0.1.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.9/ender-darwin-arm64"
      sha256 "c773e67f8b6230d45e55203b1a05737a6e3206f7ba489f2f6550540419b525df"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.9/ender-darwin-x64"
      sha256 "35b7c5bfb586da66b1339ad8f0728789ddf2956a2e3dac315511724e094a4e5f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.9/ender-linux-arm64"
      sha256 "4488f779236646d6fc78d6afeb5a508e97a8a1224c434dcf8da7d85732d2e3b4"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.9/ender-linux-x64"
      sha256 "b039e961ca5d69ee9c69625177af686a01c02367e3e27bc9e07062bb3c9c8e6c"
    end
  end

  def install
    bin.install Dir["ender-*"].first => "ender"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ender --version")
  end
end
