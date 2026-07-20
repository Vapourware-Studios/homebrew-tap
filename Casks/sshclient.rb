cask "sshclient" do
  version "0.1.1"
  sha256 "ff70364538f08190dd3359b1a458b8143d462970b158e017e8dc35e3f89d5059"

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
