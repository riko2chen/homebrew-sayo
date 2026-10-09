cask "sayo" do
  version "0.2.4,2004"
  sha256 "0ac30ee2f539de36f8ee71b869d452298f82ee2f7f3ab694355007621d929ed7"

  url "https://github.com/riko2chen/Sayo/releases/download/v#{version.csv.first}/Sayo-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Sayo"
  desc "Translate and rewrite text where you type"
  homepage "https://sayo.rikolab.com/"

  livecheck do
    url "https://github.com/riko2chen/Sayo/releases/latest/download/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Sayo.app"
  binary "#{appdir}/Sayo.app/Contents/MacOS/sayo"
end
