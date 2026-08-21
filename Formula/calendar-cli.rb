class CalendarCli < Formula
  desc "TUI calendar app with Google Calendar sync"
  homepage "https://github.com/ynui/calendar-cli"
  url "https://github.com/ynui/calendar-cli/releases/download/v0.1.7/calendar-cli-v0.1.7-universal.tar.gz"
  version "0.1.7"
  sha256 "a0c3d3bcba63eaf54cdfd38f4315b5e0dc3c723035f1e26fedab6011499078c9"

  head "https://github.com/ynui/calendar-cli.git", branch: "main"

  # only needed for --HEAD source builds
  depends_on "rust" => :build

  def install
    bin.install "calendar-cli"
    bin.install_symlink "calendar-cli" => "ccli"
  end

  test do
    system "#{bin}/calendar-cli", "--version"
  end
end
