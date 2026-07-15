cask "raymol" do
  version "1.6.1"
  sha256 "e2f8ac48f574a8b6172aa8f5e7e316c516623627317649e39163728b5fe566fe"

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
