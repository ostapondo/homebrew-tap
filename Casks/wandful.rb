cask "wandful" do
  arch arm: "aarch64", intel: "x64"

  version "0.0.2"
  sha256 arm:   "a22fcb50d4cefb1b585935c0ea2e632fb9c35e37f22f140d4968a09bc5edab36",
         intel: "c54c9f57a6528c8f008162335da5c868a0e3bc06a5818e67229fae10aa340f5a"

  url "https://github.com/ostapondo/wandful/releases/download/v#{version}/Wandful_#{version}_#{arch}.dmg",
      verified: "github.com/ostapondo/wandful/"
  name "Wandful"
  desc "Magic wand for the desktop: draw a rune, cast a keyboard shortcut"
  homepage "https://github.com/ostapondo/wandful"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :catalina

  app "Wandful.app"

  zap trash: [
    "~/Library/Application Support/com.ostap.wandful",
    "~/Library/Caches/com.ostap.wandful",
    "~/Library/Preferences/com.ostap.wandful.plist",
    "~/Library/Saved Application State/com.ostap.wandful.savedState",
    "~/Library/WebKit/com.ostap.wandful",
  ]

  caveats <<~EOS
    Wandful is not notarized yet, so the first launch needs
    right-click → Open (or: xattr -d com.apple.quarantine /Applications/Wandful.app).

    It also needs Accessibility to type shortcuts into other apps:
    System Settings → Privacy & Security → Accessibility → enable Wandful.
  EOS
end
