cask "deadbeef" do
  version "1.9.5-beta2"
  desc "a modular cross-platform audio player"
  sha256 "6408cfdd1839b490544f9473a1aa771b2a0bee0e541662824fb277867856530a"

  # downloads.sourceforge.net was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/project/deadbeef/travis/macOS/1.9/deadbeef-#{version}-macos-universal.zip", verified: "downloads.sourceforge.net/project/deadbeef"
  name "DeaDBeeF"
  homepage "https://deadbeef.sourceforge.io/"

  app "DeaDBeeF.app"

  zap trash: [
    "~/Library/Preferences/com.deadbeef.DeaDBeeF.plist",
    "~/Library/Preferences/deadbeef",
    "~/Library/Saved Application State/com.deadbeef.deadbeef.savedState",
  ]
end
