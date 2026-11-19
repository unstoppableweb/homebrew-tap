cask "unstoppable-code" do
  arch arm: "arm64", intel: "x64"

  version "1.24.0"
  sha256 arm:   "761f9c7d470842417012deb64b05dddfefd45a388dd509e6158018731038cef9",
         intel: "9e90dc5a743882abb9cb2380afc0df30437b142ba78107337a899ac444c7e5ba"

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
