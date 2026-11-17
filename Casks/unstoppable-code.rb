cask "unstoppable-code" do
  arch arm: "arm64", intel: "x64"

  version "1.23.0"
  sha256 arm:   "c140fbcb0f007d50c0d9b3c735355ef28531b477e787b0efbd41063c725bbbf7",
         intel: "34decc8320e7e264b8be3fc314a7eac3db6c30ecb691288ef01bbf5c3bfbdf54"

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
