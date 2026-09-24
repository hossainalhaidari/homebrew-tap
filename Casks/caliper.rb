cask "caliper" do
  version "0.1.0"
  sha256 "d7d8e59347af7f02310420c47b88a88b3cfa6a7a91f238a24bea28881f5c665c"

  url "https://github.com/hossainalhaidari/caliper/releases/download/v#{version}/Caliper-#{version}.dmg"
  name "Caliper"
  desc "Menu bar system monitor"
  homepage "https://hossainalhaidari.github.io/caliper/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Caliper.app"

  uninstall quit: "de.alhaidari.caliper"

  zap trash: [
    "~/Library/Application Support/de.alhaidari.caliper",
    "~/Library/Caches/de.alhaidari.caliper",
    "~/Library/HTTPStorages/de.alhaidari.caliper",
    "~/Library/HTTPStorages/de.alhaidari.caliper.binarycookies",
    "~/Library/Preferences/de.alhaidari.caliper.plist",
  ]
end
