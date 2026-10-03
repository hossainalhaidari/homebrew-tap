cask "eskele" do
  version "0.3.1"
  sha256 "a1f8c4f8c78ae7da8dcce49b46ef810045b8b1ff618fcfbc98152f460254a64c"

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
