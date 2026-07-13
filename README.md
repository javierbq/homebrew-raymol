# RayMol Homebrew Tap

A [Homebrew](https://brew.sh) tap for [**RayMol**](https://github.com/javierbq/RayMol) — a
native macOS molecular visualization app (a PyMOL fork with Metal rendering).

## Install

```sh
brew install --cask javierbq/raymol/raymol
```

or, equivalently:

```sh
brew tap javierbq/raymol
brew install --cask raymol
```

## Updating

RayMol updates itself in-app via [Sparkle](https://sparkle-project.org), so it
will keep itself current without Homebrew. `brew upgrade --cask raymol` also
picks up new releases whenever the tap is refreshed.

## Uninstall

```sh
brew uninstall --cask raymol

# also remove leftover preferences, caches, and app data:
brew uninstall --zap --cask raymol
```

## Requirements

- macOS 13 (Ventura) or newer
- Apple Silicon or Intel Mac

## Notes

The cask installs the same notarized, Developer-ID-signed `RayMol.dmg` published
on the [RayMol releases page](https://github.com/javierbq/RayMol/releases). The
`version` and `sha256` in [`Casks/raymol.rb`](Casks/raymol.rb) are bumped
automatically by RayMol's release pipeline (`swiftui/publish_release.sh`) each
time a new version ships.
