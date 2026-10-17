class HomeAssistantCli < Formula
  desc "Command-line client and TUI for Home Assistant"
  homepage "https://github.com/ynui/home-assistant-cli"
  url "https://github.com/ynui/home-assistant-cli/releases/download/v0.1.0/home-assistant-cli-v0.1.0-darwin-arm64.tar.gz"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.1.0/home-assistant-cli-v0.1.0-darwin-arm64.tar.gz"
      sha256 "bb2e2ea600482a0400b797b970c9e43a987c18f72b819373609c411a5dad82ee"
    end
    on_intel do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.1.0/home-assistant-cli-v0.1.0-darwin-amd64.tar.gz"
      sha256 "f1c7b3884d5ca510ded891668796fae4801e8d7d12e31008199169047226cf65"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.1.0/home-assistant-cli-v0.1.0-linux-arm64.tar.gz"
      sha256 "01353cc8e3f11ed066a588cb17252f0fe4b1b2096a0dac0b0c50f3014419e859"
    end
    on_intel do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.1.0/home-assistant-cli-v0.1.0-linux-amd64.tar.gz"
      sha256 "10e0e292a436ff5d6f390328f5b5a34fa42935d0979bfeaabace0bca88fb62a3"
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
