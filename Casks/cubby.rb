cask "cubby" do
  version "0.4.0"
  sha256 "3f8ca39e7fefae4d5d19ac89a42c1e15136ada07fe7993ff32d0bf0dd3fe159d"

  url "https://github.com/no1coder/cubby/releases/download/v#{version}/Cubby-#{version}.dmg"
  name "Cubby"
  desc "Keyboard-first clipboard history manager"
  homepage "https://github.com/no1coder/cubby"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Cubby.app"

  uninstall quit: "io.github.no1coder.Cubby"

  zap trash: [
    "~/Library/Application Support/Cubby",
    "~/Library/Caches/io.github.no1coder.Cubby",
    "~/Library/HTTPStorages/io.github.no1coder.Cubby",
    "~/Library/Preferences/io.github.no1coder.Cubby.plist",
    "~/Library/Saved Application State/io.github.no1coder.Cubby.savedState",
  ]
end
