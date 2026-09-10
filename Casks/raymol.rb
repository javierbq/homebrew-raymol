cask "raymol" do
  version "1.11.0"
  sha256 "bfd64eca96be2ea03d48a17005d05db905d91db9ae51d8869efd5a4db661ea50"

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
