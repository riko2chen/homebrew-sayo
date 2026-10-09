cask "sayo" do
  version "0.2.5,2005"
  sha256 "d9fefedef13ad555a62c584a0f8f3db941029ff98e8f8aeab3f841ec1ae25ad9"

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
