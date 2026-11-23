class Ender < Formula
  desc "Minecraft instances, mods and servers from the command line"
  homepage "https://github.com/fatlard1993/ender-launcher"
  version "0.4.1"
  license "MIT"

  on_macos do
    depends_on macos: :ventura

    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.4.1/ender-darwin-arm64"
      sha256 "95a13d0d15b7b6a6ea0502cef7d449233c293c8de0089f19f85ea26b3088d79b"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.4.1/ender-darwin-x64"
      sha256 "b96d604609a3f105f3f48eb3c08c04449a6c3678ab1b26eed602eb58af63ec0c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.4.1/ender-linux-arm64"
      sha256 "fd790c460ffa723241475d1e96762005095c06f14b6e86cb8c2258c7fe875e92"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.4.1/ender-linux-x64"
      sha256 "accf0c36f45b54b84f88d8986b62e3bbe9e170d3b6bb53260825e5bcd4e8661b"
    end
  end

  def install
    bin.install Dir["ender-*"].first => "ender"
  end

  def caveats
    <<~EOS
      Start with: ender new survival, then ender launch
      ender desktop adds an Ender icon to your app menu that opens ender web.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ender --version")
  end
end
