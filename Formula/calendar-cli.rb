class CalendarCli < Formula
  desc "TUI calendar app with Google Calendar sync"
  homepage "https://github.com/ynui/calendar-cli"
  url "https://github.com/ynui/calendar-cli/releases/download/v0.1.6/calendar-cli-v0.1.6-universal.tar.gz"
  version "0.1.6"
  sha256 "5c5de7b2b74cee1d11ac47f5059163aa013dab3bb609b6ccd72a15d4219216d0"

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
