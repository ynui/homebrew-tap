class CalendarCli < Formula
  desc "TUI calendar app with Google Calendar sync"
  homepage "https://github.com/ynui/calendar-cli"
  url "https://github.com/ynui/calendar-cli/releases/download/v0.1.5/calendar-cli-v0.1.5-universal.tar.gz"
  version "0.1.5"
  sha256 "03c222a1cd13bb32b77f465c5e55dd5afe4ad7dd83cf94989d0c7deed28fb476"

  head "https://github.com/ynui/calendar-cli.git", branch: "main"

  # only needed for --HEAD source builds
  depends_on "rust" => :build

  def install
    bin.install "calendar-cli"
  end

  test do
    system "#{bin}/calendar-cli", "--version"
  end
end
