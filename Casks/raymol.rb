cask "raymol" do
  version "1.11.3"
  sha256 "3a1435d2f3729b73979afc78c170e48f96b8a16b16621369bcac25c13607e507"

  url "https://github.com/javierbq/RayMol/releases/download/v#{version}/RayMol-#{version}.dmg"
  name "RayMol"
  desc "Molecular visualization system (PyMOL fork with Metal rendering)"
  homepage "https://github.com/javierbq/RayMol"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "RayMol.app"

  zap trash: [
    "~/Library/Application Support/RayMol",
    "~/Library/Caches/io.raymol.RayMol",
    "~/Library/HTTPStorages/io.raymol.RayMol",
    "~/Library/HTTPStorages/io.raymol.RayMol.binarycookies",
    "~/Library/Preferences/io.raymol.RayMol.plist",
    "~/Library/RayMolState",
    "~/Library/WebKit/io.raymol.RayMol",
  ]
end
