cask "little-swan" do
  version "0.1.4"
  sha256 "e789cfc9b45cce92314f09a1d67a67d0596d1b3af3d4ec0cba1d9cf51457a259"

  url "https://github.com/boundless-forest/little-swan/releases/download/v#{version}/Little-Swan-#{version}.zip"
  name "Little Swan"
  desc "Menu bar app that rewrites text from any language into natural English"
  homepage "https://github.com/boundless-forest/little-swan"

  depends_on macos: :sonoma

  app "Little Swan.app"

  zap trash: [
    "~/Library/Application Support/Little Swan",
    "~/Library/Preferences/com.bearwang.littleswan.app.plist",
    "~/Library/Preferences/com.bearwang.littleswan.plist",
  ]

  caveats <<~EOS
    Little Swan is ad-hoc signed and is not notarized by Apple. If macOS blocks
    the first launch, open System Settings > Privacy & Security and click
    "Open Anyway", then confirm that you want to open Little Swan.
  EOS
end
