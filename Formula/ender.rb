class Ender < Formula
  desc "Minecraft instances, mods and servers from the command line"
  homepage "https://github.com/fatlard1993/ender-launcher"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.3/ender-darwin-arm64"
      sha256 "993dad715d66f744a7b28ad751cd948263acf8fc67d8af3e23a17f09c510c60d"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.3/ender-darwin-x64"
      sha256 "4208d5a49b16d7ce8d734809e6d839011513d78e1c88e097d05ba0a49ea42ac6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.3/ender-linux-arm64"
      sha256 "01307aea14388dfafc520454b4604c7b97279bfdb7cad55cf300e69e91661c38"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.3/ender-linux-x64"
      sha256 "821bbfb0f19cf2b142990dff8b6cc03c40871e56113d5f39bd64ec6e323d2cb8"
    end
  end

  def install
    bin.install Dir["ender-*"].first => "ender"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ender --version")
  end
end
