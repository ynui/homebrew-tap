class HomeAssistantCli < Formula
  desc "Command-line client and TUI for Home Assistant"
  homepage "https://github.com/ynui/home-assistant-cli"
  url "https://github.com/ynui/home-assistant-cli/releases/download/v0.7.1/home-assistant-cli-v0.7.1-darwin-arm64.tar.gz"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.7.1/home-assistant-cli-v0.7.1-darwin-arm64.tar.gz"
      sha256 "5a8b3ef2aaa6c0c59bd2f3cc32bfc91418febf981e0b1bcb3d1c9ecb49f365c6"
    end
    on_intel do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.7.1/home-assistant-cli-v0.7.1-darwin-amd64.tar.gz"
      sha256 "2343ac7399ac3a476871378c292a69ae5ee4f04f56d04222e90828bc828b1597"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.7.1/home-assistant-cli-v0.7.1-linux-arm64.tar.gz"
      sha256 "7456ff85f5bb502ba288bfbd040ddef0549e637a2a26b1434d6feb8cac3d7a13"
    end
    on_intel do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.7.1/home-assistant-cli-v0.7.1-linux-amd64.tar.gz"
      sha256 "f29bbc16afa876e994ec4442b41bcee3a1d8976951f980514da25083b76e01e0"
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
