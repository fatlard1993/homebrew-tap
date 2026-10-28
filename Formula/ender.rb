class Ender < Formula
  desc "Minecraft instances, mods and servers from the command line"
  homepage "https://github.com/fatlard1993/ender-launcher"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.1/ender-darwin-arm64"
      sha256 "8186c39e3f816200dfe3e1741674c233a56fe3db00b467cd809031992c37ca6a"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.1/ender-darwin-x64"
      sha256 "4858e34b8999dcbf5f7d13e0461cb201898852c8b128635c666ac579f0bd394d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.1/ender-linux-arm64"
      sha256 "122b9f90dc1f0a00cfa2bf2378d17e0104a37aa3d9e7e9f590e821a5557b4c88"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.1/ender-linux-x64"
      sha256 "243c27a67b9dd5dbad60ca0ff64f3f65bdcd999cd8a422f8f54634e5f8d54c05"
    end
  end

  def install
    bin.install Dir["ender-*"].first => "ender"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ender --version")
  end
end
