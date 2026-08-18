cask "wandful" do
  arch arm: "aarch64", intel: "x64"

  version "0.0.1"
  sha256 arm:   "6aa745fbf186436fe7c52c19ef987571bd01c41a75524d764112533300b44330",
         intel: "69925f5e5004ff5c0ab6f9d643d9fcd4d4285388afb43ba165613debc26d1568"

  url "https://github.com/ostapondo/wandful/releases/download/v#{version}/Wandful_#{version}_#{arch}.dmg",
      verified: "github.com/ostapondo/wandful/"
  name "Wandful"
  desc "Magic wand for the desktop: draw a rune, cast a keyboard shortcut"
  homepage "https://github.com/ostapondo/wandful"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

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
