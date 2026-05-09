cask "glyph" do
  version "0.10.0"
  sha256 "426c82c28c9e695d2067945fd81ea3a6a37cc7ac29bfba9ad15d06bd7ef6e65d"

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
