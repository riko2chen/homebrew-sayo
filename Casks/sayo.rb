cask "sayo" do
  version "0.2.0,2000"
  sha256 "db8fa278844c300b59aeab0b0c23b50600933f8ca280d1867bff8c0273a88819"

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
