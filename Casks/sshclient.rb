cask "sshclient" do
  version "0.1.10"
  sha256 "5cfd75616d711348cfba8ce6b65ef42bd7ca3ab6e255b914664efb55f66f5d05"

  url "https://github.com/Vapourware-Studios/sshclient/releases/download/v#{version}/SSH-Client-#{version}-arm64.dmg",
      verified: "github.com/Vapourware-Studios/sshclient/"
  name "SSH Client"
  desc "SSH client inspired by Termius"
  homepage "https://github.com/Vapourware-Studios/sshclient"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  auto_updates true

  app "SSH Client.app"

  zap trash: [
    "~/Library/Application Support/SSH Client",
    "~/Library/Preferences/net.vapourware-studios.sshclient.plist",
    "~/Library/Saved Application State/net.vapourware-studios.sshclient.savedState",
    "~/Library/Logs/SSH Client",
  ]
end
