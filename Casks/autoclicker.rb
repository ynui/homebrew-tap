cask "autoclicker" do
  version "1.0.0"
  sha256 "c3347a4278a9ca6bf7806042c27f35a48ed5a2b2e8dcbf712d2407bfe99304e3"

  url "https://github.com/ynui/autoclicker/releases/download/v#{version}/Autoclicker.zip"
  name "Autoclicker"
  desc "Minimal macOS autoclicker"
  homepage "https://github.com/ynui/autoclicker"

  app "Autoclicker.app"

  zap trash: "~/Library/Preferences/local.autoclicker.plist"
end
