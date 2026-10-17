class HomeAssistantCli < Formula
  desc "Command-line client and TUI for Home Assistant"
  homepage "https://github.com/ynui/home-assistant-cli"
  url "https://github.com/ynui/home-assistant-cli/releases/download/v0.3.0/home-assistant-cli-v0.3.0-darwin-arm64.tar.gz"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.3.0/home-assistant-cli-v0.3.0-darwin-arm64.tar.gz"
      sha256 "8d4e5fb624ff11bf30aa32ccbc48df08d47cf62d76d87d4ca68fbd97a04f9995"
    end
    on_intel do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.3.0/home-assistant-cli-v0.3.0-darwin-amd64.tar.gz"
      sha256 "37f03895f566ff70275ceda95c11b1c2d13ce47ac14d91548bb397c45639e5f8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.3.0/home-assistant-cli-v0.3.0-linux-arm64.tar.gz"
      sha256 "6a86e6f949b2db656c7e58694f0ce5ae17085f4506b7d3af042e41e1367667b3"
    end
    on_intel do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.3.0/home-assistant-cli-v0.3.0-linux-amd64.tar.gz"
      sha256 "9fd41cbb103e2631ebdd13dfd93aaaa2667e2530f7990259417840e37c88f5dc"
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
