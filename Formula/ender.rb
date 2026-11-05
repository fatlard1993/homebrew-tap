class Ender < Formula
  desc "Minecraft instances, mods and servers from the command line"
  homepage "https://github.com/fatlard1993/ender-launcher"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.2.1/ender-darwin-arm64"
      sha256 "55c707ef2045df6b0cd6bc788cd989cdf90dbdf0062a4ec6464a2e38f29494fa"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.2.1/ender-darwin-x64"
      sha256 "556e5afbb1bb5f9749e7fbe645ea69dcee5128be41b64e050b9d8dd7b63caa06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.2.1/ender-linux-arm64"
      sha256 "0ec4e2938be7cf621c569c0e9b0c7de6e679c9a8c276d07acca922ed41bfe628"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.2.1/ender-linux-x64"
      sha256 "9bda854decf38ac3eaafe3b82652fe72ba1b7865cb05807645fe69881ac295f5"
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
