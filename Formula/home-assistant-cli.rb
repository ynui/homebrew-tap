class HomeAssistantCli < Formula
  desc "Command-line client and TUI for Home Assistant"
  homepage "https://github.com/ynui/home-assistant-cli"
  url "https://github.com/ynui/home-assistant-cli/releases/download/v0.3.0/home-assistant-cli-v0.3.0-darwin-arm64.tar.gz"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.3.0/home-assistant-cli-v0.3.0-darwin-arm64.tar.gz"
      sha256 "6827f085b6def0a8ee5892796f37f847a8633c4256796936da1c7df9e20d6e2b"
    end
    on_intel do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.3.0/home-assistant-cli-v0.3.0-darwin-amd64.tar.gz"
      sha256 "ac3e675117a330e906ad2423aeded6c7c7c15baf4b6447a3ba9200f41c2a5fcf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.3.0/home-assistant-cli-v0.3.0-linux-arm64.tar.gz"
      sha256 "5d0eaa7916d3b8be85309df1a493b1a1e6ebc04b957d4281422f06c096d79f64"
    end
    on_intel do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.3.0/home-assistant-cli-v0.3.0-linux-amd64.tar.gz"
      sha256 "e3f498a522983c38818be718803c568288487f931fd14cb57d3f34a6658d4728"
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
