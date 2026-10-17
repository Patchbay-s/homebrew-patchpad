cask "patchpad" do
  version "0.1.0"
  sha256 "431cd35a546f32a5c21eb6feca6da44498686cb46d7a2bb96f5ae9bb3bd1d7c5"

  url "https://github.com/Patchbay-s/PatchPad/releases/download/v#{version}/PatchPad_#{version}_macos-aarch64.dmg"
  name "PatchPad"
  desc "Game controller tester for DualShock 4 and Xbox controllers"
  homepage "https://github.com/Patchbay-s/PatchPad"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "PatchPad.app"

  zap trash: [
    "~/Library/Application Support/com.patchbay.patchpad",
    "~/Library/Caches/com.patchbay.patchpad",
    "~/Library/WebKit/com.patchbay.patchpad",
  ]
end
