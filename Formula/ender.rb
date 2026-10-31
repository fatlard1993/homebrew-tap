class Ender < Formula
  desc "Minecraft instances, mods and servers from the command line"
  homepage "https://github.com/fatlard1993/ender-launcher"
  version "0.1.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.11/ender-darwin-arm64"
      sha256 "7cb9c78cf4adeddeba9612df70049206b6ed1fdb5d2f21474eefdac47490ff56"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.11/ender-darwin-x64"
      sha256 "4f9b14b41608a174626f1a035d5f84cb525f912e50823f96b5d404f4457d61b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.11/ender-linux-arm64"
      sha256 "a711e1a9adc6ca67fd9b1515fad876541a433989da97190b79a626b1073f70f1"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.11/ender-linux-x64"
      sha256 "c5609399ee9499752a3e1494040b9c2de6d58fa42799d7446557c64b88ec059c"
    end
  end

  def install
    bin.install Dir["ender-*"].first => "ender"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ender --version")
  end
end
