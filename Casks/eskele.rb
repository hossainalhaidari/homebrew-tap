cask "eskele" do
  version "0.1.1"
  sha256 "15aed03b19b5dde2eb12fa0458a861b0701b1131783bb5a485d57a135699c751"

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
