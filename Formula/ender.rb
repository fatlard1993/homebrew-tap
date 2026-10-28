class Ender < Formula
  desc "Minecraft instances, mods and servers from the command line"
  homepage "https://github.com/fatlard1993/ender-launcher"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.6/ender-darwin-arm64"
      sha256 "8bfba71f7966f41cfcab579929af593cec8270e845f35171718bd25f113bd68c"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.6/ender-darwin-x64"
      sha256 "85093665ef2e94b9fd54e87f2bab7b8536df931f62f89ad0dae263ca20056df7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.6/ender-linux-arm64"
      sha256 "8d1ab86cab9921b0e59cff5ed57c519b44a67076df0eb951d83b9be6e0b01c7e"
    end
    on_intel do
      url "https://github.com/fatlard1993/ender-launcher/releases/download/v0.1.6/ender-linux-x64"
      sha256 "2019c094d0516e679949e6bf645781a123f25692fef3a6da3ea8df4cd3a03775"
    end
  end

  def install
    bin.install Dir["ender-*"].first => "ender"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ender --version")
  end
end
