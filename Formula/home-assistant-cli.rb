class HomeAssistantCli < Formula
  desc "Command-line client and TUI for Home Assistant"
  homepage "https://github.com/ynui/home-assistant-cli"
  url "https://github.com/ynui/home-assistant-cli/releases/download/v0.4.0/home-assistant-cli-v0.4.0-darwin-arm64.tar.gz"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.4.0/home-assistant-cli-v0.4.0-darwin-arm64.tar.gz"
      sha256 "27e1a5a58a9040fe882f00216ad1871c61402a55e41ab5eac369cdf7842dc28b"
    end
    on_intel do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.4.0/home-assistant-cli-v0.4.0-darwin-amd64.tar.gz"
      sha256 "322e1f2371ea4d08da3a819e70bd4ce8ead7158a649d4d21b72a15cff57c30be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.4.0/home-assistant-cli-v0.4.0-linux-arm64.tar.gz"
      sha256 "fd421b2a546a673247b48fe28c2eb89b08534bebc05e47985bea727a3ebb7aec"
    end
    on_intel do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.4.0/home-assistant-cli-v0.4.0-linux-amd64.tar.gz"
      sha256 "0750853f774115d871f20b742feb33e1f5874e17023134587ebf26eff59e1cb8"
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
