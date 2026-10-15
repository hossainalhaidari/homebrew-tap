cask "eskele" do
  version "0.4.0"
  sha256 "c826ce90c070ed26a545cd672bd9a7252bf3b1a8945df4c1f19c72c6bf507560"

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
