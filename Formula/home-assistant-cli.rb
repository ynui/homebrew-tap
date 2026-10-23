class HomeAssistantCli < Formula
  desc "Command-line client and TUI for Home Assistant"
  homepage "https://github.com/ynui/home-assistant-cli"
  url "https://github.com/ynui/home-assistant-cli/releases/download/v0.7.0/home-assistant-cli-v0.7.0-darwin-arm64.tar.gz"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.7.0/home-assistant-cli-v0.7.0-darwin-arm64.tar.gz"
      sha256 "8ea2646b6e3d5cd9015ce448fbd7bec577e6eb0b2f5e0da57e84caf837a2c829"
    end
    on_intel do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.7.0/home-assistant-cli-v0.7.0-darwin-amd64.tar.gz"
      sha256 "b2d8471166c75a438bcefd56f29b722d9de56b5d73e15c012949283e11133969"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.7.0/home-assistant-cli-v0.7.0-linux-arm64.tar.gz"
      sha256 "f8b8d5e9c8540ec65e0fe496fbade2fec881de9cf2641c84156b2ed52d399902"
    end
    on_intel do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.7.0/home-assistant-cli-v0.7.0-linux-amd64.tar.gz"
      sha256 "319ff40eb84bc1e3fadb7bae19acc247bcf773cfddf156a165ea9ec8007a0687"
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
