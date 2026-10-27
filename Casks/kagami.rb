cask "kagami" do
  version "0.1.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/hossainalhaidari/kagami/releases/download/v#{version}/Kagami-#{version}.dmg"
  name "Kagami"
  desc "Disk image flasher for USB drives and SD cards"
  homepage "https://hossain.al/kagami/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Kagami.app"

  zap trash: [
    "~/Library/Caches/de.alhaidari.Kagami",
    "~/Library/HTTPStorages/de.alhaidari.Kagami",
    "~/Library/HTTPStorages/de.alhaidari.Kagami.binarycookies",
    "~/Library/Preferences/de.alhaidari.Kagami.plist",
    "~/Library/Saved Application State/de.alhaidari.Kagami.savedState",
  ]
end
