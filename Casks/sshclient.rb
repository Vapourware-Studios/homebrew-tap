cask "sshclient" do
  version "0.1.4"
  sha256 "01736ee9f07ac59cffc371f126e21cc859956e3ceed893b1ad31bed0f56e3f79"

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
