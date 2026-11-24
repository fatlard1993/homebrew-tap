class Ender < Formula
  desc "Minecraft instances, mods and servers from the command line"
  homepage "https://github.com/fatlard1993/ender-launcher"
  version "0.4.2"
  license "MIT"

  on_macos do
    depends_on macos: :ventura

    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.4.2/ender-darwin-arm64"
      sha256 "6f6fcbaa075ceb932d2d623a3ab153651b32e6e96e19d9f72db091f1b41302d6"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.4.2/ender-darwin-x64"
      sha256 "29e3040bf8b6de6a116f069f601c3f12b485397a3ccf8dbbf1fe34151042a569"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.4.2/ender-linux-arm64"
      sha256 "a53f178f24ef598eb4dd15ebb497c3e72961483a9b32eddaea9d13df87725df9"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.4.2/ender-linux-x64"
      sha256 "3abf2736d4856bee90a8b7e344b95f5b199cb877f66f5e8a2280947b798f8c26"
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
