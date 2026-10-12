cask "cubby" do
  version "0.3.0"
  sha256 "d254aea4665d3e79fdfbe8a6e0b86b95d62e30d92aa8f8ec9a090b3bf26c077b"

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
