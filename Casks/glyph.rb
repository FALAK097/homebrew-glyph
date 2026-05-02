cask "glyph" do
  version "0.9.0"
  sha256 "b1c8ed381fe73d62cfd6a92a4d34d297a61cea74cfdb77fb3a5d19a20cf28544"

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
