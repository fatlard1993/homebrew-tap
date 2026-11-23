class Ender < Formula
  desc "Minecraft instances, mods and servers from the command line"
  homepage "https://github.com/fatlard1993/ender-launcher"
  version "0.4.0"
  license "MIT"

  on_macos do
    depends_on macos: :ventura

    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.4.0/ender-darwin-arm64"
      sha256 "3c897747f0c87497c3dbf1b5174acfc8c03b9dc835cd22ed386c31e2466ae5fc"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.4.0/ender-darwin-x64"
      sha256 "e078b4e322d48dc38cdc5bee2ab399a1be70a9bcc226847e07bd03f30a88d48b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.4.0/ender-linux-arm64"
      sha256 "109c285cd3b7fac26a310b7ed9d9c2ed14b7c1fc48240e2f5e1e6b9ced45909a"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.4.0/ender-linux-x64"
      sha256 "6e3a363cb6a9a592741e6f8fc36de086dfab809adb75564e26f8e6b71f7c674b"
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
