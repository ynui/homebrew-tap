class HomeAssistantCli < Formula
  desc "Command-line client and TUI for Home Assistant"
  homepage "https://github.com/ynui/home-assistant-cli"
  url "https://github.com/ynui/home-assistant-cli/releases/download/v0.1.0/home-assistant-cli-v0.1.0-darwin-arm64.tar.gz"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.1.0/home-assistant-cli-v0.1.0-darwin-arm64.tar.gz"
      sha256 "25b6b8098f25ee324f518c0cbd0cc1619d74e76d3bf43c278d93b3def0b81d0e"
    end
    on_intel do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.1.0/home-assistant-cli-v0.1.0-darwin-amd64.tar.gz"
      sha256 "b8bcfea1063592e2ee9aab7ad11a50a36f52534683f009bc45b97961c0250ada"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.1.0/home-assistant-cli-v0.1.0-linux-arm64.tar.gz"
      sha256 "a334e17a1354da696808c822f390a1cfa3b33ad07ac0b3854f9fe7969646c263"
    end
    on_intel do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.1.0/home-assistant-cli-v0.1.0-linux-amd64.tar.gz"
      sha256 "e0f4eb7ce6f874014ad7d2b0f58b6b4ece3088bd796666a88c930712e7530334"
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
