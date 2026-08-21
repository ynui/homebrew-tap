class CalendarCli < Formula
  desc "TUI calendar app with Google Calendar sync"
  homepage "https://github.com/ynui/calendar-cli"
  url "https://github.com/ynui/calendar-cli/releases/download/v0.1.9/calendar-cli-v0.1.9-universal.tar.gz"
  version "0.1.9"
  sha256 "f2a9ec8b7e8dbf62ea37532576a7f6cc898d48b2cca3efc09e72b2ffb036e896"

  head "https://github.com/ynui/calendar-cli.git", branch: "main"

  # only needed for --HEAD source builds
  depends_on "rust" => :build

  def install
    bin.install "calendar-cli"
    bin.install_symlink "calendar-cli" => "ccal"
  end

  test do
    system "#{bin}/calendar-cli", "--version"
  end
end
