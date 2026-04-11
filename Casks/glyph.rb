cask "glyph" do
  version "0.6.0"
  sha256 "d0ff546c70b11e6ec37e5fe672c0a0fcbd1db80d7ecebc298aa663c671b76561"

  url "https://github.com/FALAK097/glyph/releases/download/v#{version}/Glyph-mac.dmg"
  name "Glyph"
  desc "Minimal markdown viewer and editor"
  homepage "https://github.com/FALAK097/glyph"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Glyph.app"

  zap trash: [
    "~/Library/Application Support/Glyph",
    "~/Library/Preferences/com.falakgala.glyph.plist",
    "~/Library/Saved Application State/com.falakgala.glyph.savedState",
  ]
end
