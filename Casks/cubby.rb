cask "cubby" do
  version "0.2.0"
  sha256 "2367659f9609102aeb1b633f2f9bd6ba52dea7f7c4256b7d49e518adde6b4c4e"

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
