class HomeAssistantCli < Formula
  desc "Command-line client and TUI for Home Assistant"
  homepage "https://github.com/ynui/home-assistant-cli"
  url "https://github.com/ynui/home-assistant-cli/releases/download/v0.5.0/home-assistant-cli-v0.5.0-darwin-arm64.tar.gz"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.5.0/home-assistant-cli-v0.5.0-darwin-arm64.tar.gz"
      sha256 "5768a5f56028db6935fe9341291d17229c474a91e04d62bfa03f7b189fa59a77"
    end
    on_intel do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.5.0/home-assistant-cli-v0.5.0-darwin-amd64.tar.gz"
      sha256 "74463867862cc2265000c5db77bbad66eb24bde18f01be3da6e87de472b018db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.5.0/home-assistant-cli-v0.5.0-linux-arm64.tar.gz"
      sha256 "b2b2b22e4bfbee78b509214a831788065880fc1e4f6abe0f9e527c38c10315df"
    end
    on_intel do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.5.0/home-assistant-cli-v0.5.0-linux-amd64.tar.gz"
      sha256 "c05239a1a40c07f6e9f2a0422119ef0cb7d91ccbebb1c5365cb603f5f496510b"
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
