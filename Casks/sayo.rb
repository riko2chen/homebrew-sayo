cask "sayo" do
  version "0.2.3,2003"
  sha256 "9fb388988a5b91d0110a80b8137606aabbf9eda7a16516528f63ad29639a673e"

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
