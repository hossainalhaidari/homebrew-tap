cask "eskele" do
  version "0.3.0"
  sha256 "0fdbd884bf3ff0c7a869198495f3068623735dd8aa17cbd27215f115d2d6a8a2"

  url "https://github.com/hossainalhaidari/eskele/releases/download/v#{version}/Eskele-#{version}.dmg"
  name "Eskele"
  desc "Minimal dock for the left, bottom or right edge of the screen"
  homepage "https://eskele.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Eskele.app"

  zap trash: [
    "~/Library/Application Support/Eskele",
    "~/Library/Caches/de.alhaidari.Eskele",
    "~/Library/HTTPStorages/de.alhaidari.Eskele",
    "~/Library/HTTPStorages/de.alhaidari.Eskele.binarycookies",
    "~/Library/Preferences/de.alhaidari.Eskele.plist",
  ]
end
