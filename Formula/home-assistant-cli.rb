class HomeAssistantCli < Formula
  desc "Command-line client and TUI for Home Assistant"
  homepage "https://github.com/ynui/home-assistant-cli"
  url "https://github.com/ynui/home-assistant-cli/releases/download/v0.2.0/home-assistant-cli-v0.2.0-darwin-arm64.tar.gz"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.2.0/home-assistant-cli-v0.2.0-darwin-arm64.tar.gz"
      sha256 "748ab8a9fb48ba34005c3e54e1adb0843293aeae1b46f407681af7f10d86834a"
    end
    on_intel do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.2.0/home-assistant-cli-v0.2.0-darwin-amd64.tar.gz"
      sha256 "e1b613c0b84d45d0d3f3c82c785b45b3ec640d00a6165b0c0e6705189220bf0a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.2.0/home-assistant-cli-v0.2.0-linux-arm64.tar.gz"
      sha256 "2e98fa4cd5788586888d8c8ce9fd89e484afab1133841078d43c5d062f7047d7"
    end
    on_intel do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.2.0/home-assistant-cli-v0.2.0-linux-amd64.tar.gz"
      sha256 "de89388ea350f0885bb4f02bcae4f5e57a105ca752538d369714080229bcde7d"
    end
  end

  # The `has` alias collides with the unrelated core formula of the same name.
  # Anyone who already has that installed needs `brew unlink has` first.
  head "https://github.com/ynui/home-assistant-cli.git", branch: "main"

  depends_on "go" => :build

  def install
    bin.install "home-assistant-cli"
    bin.install_symlink "home-assistant-cli" => "has"
  end

  test do
    system "#{bin}/home-assistant-cli", "--help"
  end
end
