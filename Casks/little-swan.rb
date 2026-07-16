cask "little-swan" do
  version "0.1.2"
  sha256 "9a2bebfad1afece273ab6ca86b85d3f10b9d63a921615c31b8398bc5c14b7cd4"

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
