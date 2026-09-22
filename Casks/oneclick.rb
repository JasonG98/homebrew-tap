cask "oneclick" do
  version "0.1.1"
  sha256 "9c0c210db025859b9dbb8faa8d6bea091be3cba6ee30300bbb347c4374c21f1d"
  url "https://github.com/JasonG98/OneClick/releases/download/v0.1.1/OneClick-0.1.1.dmg"
  name "OneClick"
  desc "Open Finder directories in your favorite applications and copy paths"
  homepage "https://github.com/JasonG98/OneClick"
  depends_on arch: :arm64
  depends_on macos: :tahoe
  app "OneClick.app"
  uninstall quit: ["local.oneclick.app", "local.oneclick.app.finder"]
  caveats <<~EOS
    OneClick is ad hoc signed and not notarized. If macOS blocks it,
    verify the download, then run:
      xattr -dr com.apple.quarantine "#{appdir}/OneClick.app"
    Open OneClick and enable its Finder extension in System Settings.
  EOS
end
