cask "raymol" do
  version "1.7.1"
  sha256 "807dc1d3cb77a71ef07be9d726921a2b6f9d57c9030bc75afa66fe6ea2481283"

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
