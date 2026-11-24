class Ender < Formula
  desc "Minecraft instances, mods and servers from the command line"
  homepage "https://github.com/fatlard1993/ender-launcher"
  version "0.4.3"
  license "MIT"

  on_macos do
    depends_on macos: :ventura

    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.4.3/ender-darwin-arm64"
      sha256 "c1cebaf9846feebc212df14cbaa9734d2a0712c18eff971bccb0c3727ce2a305"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.4.3/ender-darwin-x64"
      sha256 "83c5b04817058ebdb223856ee577a9c75a04c7797bab35dcc747cf4f8c57d896"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.4.3/ender-linux-arm64"
      sha256 "fbe3c3e2e5f305b4590eca1a93ccc982cf01153222c229664fa6d77a6f0e8887"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.4.3/ender-linux-x64"
      sha256 "1fbc55c000d7410a04a4dae1dad88c6f0adc640b67bca9c5352eaed35e25cdd4"
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
