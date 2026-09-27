cask "cubby" do
  version "0.2.0"
  sha256 "f054eb441fa55cf02075112061d7ce928f88f615f9ec814603d930c80de795b8"

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
