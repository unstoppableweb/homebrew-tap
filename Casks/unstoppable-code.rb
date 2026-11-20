cask "unstoppable-code" do
  arch arm: "arm64", intel: "x64"

  version "1.25.0"
  sha256 arm:   "a53d2a9a9fc058a1e796a1acc94278eb02675209e4386b293e7b7b28029ea5b5",
         intel: "7c29c5b9654634d1881a63a5005575c37d503826811d657009c8df4435acd1d3"

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
