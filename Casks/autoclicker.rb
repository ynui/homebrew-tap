cask "autoclicker" do
  version "1.0.1"
  sha256 "ed75a3b62ed0380212a9d548c5a8a0465ca8965dd2786534c019c11e53886d54"

  url "https://github.com/ynui/autoclicker/releases/download/v#{version}/Autoclicker.zip"
  name "Autoclicker"
  desc "Minimal macOS autoclicker"
  homepage "https://github.com/ynui/autoclicker"

  app "Autoclicker.app"

  # macOS 15+ quarantines even brew-downloaded apps; strip it so the app opens directly
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Autoclicker.app"]
  end

  zap trash: "~/Library/Preferences/local.autoclicker.plist"
end
