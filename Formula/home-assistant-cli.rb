class HomeAssistantCli < Formula
  desc "Command-line client and TUI for Home Assistant"
  homepage "https://github.com/ynui/home-assistant-cli"
  url "https://github.com/ynui/home-assistant-cli/releases/download/v0.6.0/home-assistant-cli-v0.6.0-darwin-arm64.tar.gz"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.6.0/home-assistant-cli-v0.6.0-darwin-arm64.tar.gz"
      sha256 "89187a3a5d12df4fc73c3e445b7f632a51a3a1d5332248b111ecd6ace2eb1b19"
    end
    on_intel do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.6.0/home-assistant-cli-v0.6.0-darwin-amd64.tar.gz"
      sha256 "89d6b3701bd07615447d90418ec2bdc440b37ab00cbe5f6da19bd496139add2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.6.0/home-assistant-cli-v0.6.0-linux-arm64.tar.gz"
      sha256 "2351bd041008376f2f7a1e0813539f197a5b296b4d1750e43a0a9ea76dd3a65c"
    end
    on_intel do
      url "https://github.com/ynui/home-assistant-cli/releases/download/v0.6.0/home-assistant-cli-v0.6.0-linux-amd64.tar.gz"
      sha256 "d60c883e26a12ad3b71595475f5d2f483e57a1ca4c92ecd85e2d2d122edc325b"
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
