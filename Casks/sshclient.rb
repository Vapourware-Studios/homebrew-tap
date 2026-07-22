cask "sshclient" do
  version "0.1.3"
  sha256 "fcbc304e988eec9261e995eb2f6483a478408cde0ed1afecde82d40244afc33c"

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
