class CalendarCli < Formula
  desc "TUI calendar app with Google Calendar sync"
  homepage "https://github.com/ynui/calendar-cli"
  license "MIT"

  head "https://github.com/ynui/calendar-cli.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/calendar-cli", "--version"
  end
end
