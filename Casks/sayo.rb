cask "sayo" do
  version "0.2.6,2006"
  sha256 "4fabfd5b472d26def125cd46771d55b54bc51e71b64890c277f28af3a3153621"

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
