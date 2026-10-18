cask "diskeyes" do
  version "0.1.0"
  sha256 "4cfb8770d8388be483e18bcb146ff376e8c0ae0bdbfe6756c7b6b4f6afc282ab"

  url "https://github.com/hossainalhaidari/diskeyes/releases/download/v#{version}/DiskEyes-#{version}.dmg"
  name "DiskEyes"
  desc "Disk usage analyzer with an ncdu-style browser and charts"
  homepage "https://hossain.al/diskeyes/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "DiskEyes.app"

  zap trash: [
    "~/Library/Caches/de.alhaidari.diskeyes",
    "~/Library/HTTPStorages/de.alhaidari.diskeyes",
    "~/Library/HTTPStorages/de.alhaidari.diskeyes.binarycookies",
    "~/Library/Preferences/de.alhaidari.diskeyes.plist",
  ]
end
