class CalendarCli < Formula
  desc "TUI calendar app with Google Calendar sync"
  homepage "https://github.com/ynui/calendar-cli"
  url "https://github.com/ynui/calendar-cli/releases/download/v0.1.8/calendar-cli-v0.1.8-universal.tar.gz"
  version "0.1.8"
  sha256 "83d6b99c100f832b649f3d1cf546a74fde08602eb964106935709540312e4026"

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
