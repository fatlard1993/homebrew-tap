class Ender < Formula
  desc "Minecraft instances, mods and servers from the command line"
  homepage "https://github.com/fatlard1993/ender-launcher"
  version "0.1.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.12/ender-darwin-arm64"
      sha256 "a2e0f77dd84bda466e911e1e0913d08d3b21ebc674bf5c0062c3e0510843bd89"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.12/ender-darwin-x64"
      sha256 "293bb2b9e20e5f07b1df181cfd7b64a4b73baf829319989bf68a55aacc88ab38"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.12/ender-linux-arm64"
      sha256 "80489e0daab226bf49ae7bb3aa1e54534630f5b1ec54f9277f8fa2506036f933"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.12/ender-linux-x64"
      sha256 "ab530b626016619e6e63ff27d143952bc607be9f1eec28f5b70292f814a162da"
    end
  end

  def install
    bin.install Dir["ender-*"].first => "ender"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ender --version")
  end
end
