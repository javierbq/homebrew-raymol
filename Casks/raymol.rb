cask "raymol" do
  version "1.13.0"
  sha256 "a37123562da7c3cfe4990cd274971bc6b32cf18c1b9bcce6d8e878879724d904"

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
