cask "glyph" do
  version "0.5.1"
  sha256 "24b1a9925e1cc07f11a3c4faf89cab6473dc2e5c5cdd38e76f98bbd976578cda"

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
