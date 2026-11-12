cask "unstoppable-code" do
  arch arm: "arm64", intel: "x64"

  version "1.21.0"
  sha256 arm:   "bdb3609c01d2ad91e4ac7ed8b33c59899bb659033cfa2e89fbbff401027b7167",
         intel: "1fceee62f76d291c2546bd86ad549594f8298d9f980e3ac4ae6d46bcb71913ad"

  url "https://releases.unstoppable.ai/desktop/unstoppable-code/#{version}/unstoppable-code-#{version}-mac-#{arch}.dmg"
  name "Unstoppable Code"
  desc "Agentic development environment"
  homepage "https://unstoppable.ai/"

  livecheck do
    url "https://releases.unstoppable.ai/desktop/unstoppable-code/unstoppable-code-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

  app "Unstoppable Code.app"

  # Leaves ~/.unstoppable-code and ~/.unstoppable-code-secure in place: they
  # hold the user's workspaces and stored credentials.
  zap trash: [
    "~/Library/Application Support/Unstoppable Code",
    "~/Library/Caches/com.unstoppable.code.ui",
    "~/Library/Caches/com.unstoppable.code.ui.ShipIt",
    "~/Library/Caches/unstoppable-code-updater",
    "~/Library/HTTPStorages/com.unstoppable.code.ui",
    "~/Library/Logs/unstoppable-code-ui",
    "~/Library/Preferences/com.unstoppable.code.ui.plist",
    "~/Library/Saved Application State/com.unstoppable.code.ui.savedState",
  ]
end
