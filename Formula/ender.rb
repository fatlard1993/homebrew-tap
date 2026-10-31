class Ender < Formula
  desc "Minecraft instances, mods and servers from the command line"
  homepage "https://github.com/fatlard1993/ender-launcher"
  version "0.1.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.13/ender-darwin-arm64"
      sha256 "e77287537d55ed3b16e71c609706bafcbf2f1a8d832085e4e879c07f0c732cb1"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.13/ender-darwin-x64"
      sha256 "52474ed8404bcc10c91d67bc1eaaf0a8da6a15cb7b2f16e3b6382771bc268dc7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.13/ender-linux-arm64"
      sha256 "41c9ca3f25cb902d1a563b7abdc0681839e2e22fdd6fe2f5b674325996ec0c3d"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.13/ender-linux-x64"
      sha256 "ef1d7900b31eeb3cb4d108fa1dea49361e8ab61e29d5ea08e5d2d257e6c1eddc"
    end
  end

  def install
    bin.install Dir["ender-*"].first => "ender"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ender --version")
  end
end
