cask "unstoppable-code" do
  arch arm: "arm64", intel: "x64"

  version "1.20.0"
  sha256 arm:   "13e1bad79e32a1b1d35ea7ab6d689dbdeb641c46fa71130aaa867a41332383c9",
         intel: "a6c63706c9ba651dde99dfd83e15f2cadc9f8d09200836e93eee68245e3d4699"

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
