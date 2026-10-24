cask "eskele" do
  version "0.5.0"
  sha256 "b76e4506c2a454340b30e0f667c529d6ea30549627913039ea794b5d0b993b6f"

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
