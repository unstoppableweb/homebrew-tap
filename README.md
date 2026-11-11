# Unstoppable Code Homebrew tap

Official [Homebrew](https://brew.sh) tap for the
[Unstoppable Code](https://unstoppable.ai) macOS app.

## Install

```sh
brew install --cask unstoppableweb/tap/unstoppable-code
```

Use the fully qualified name above. Homebrew trusts a cask from a third-party
tap when you install it by its full name.

## Updates

The app updates itself. Homebrew skips apps that update themselves during
`brew upgrade`, so to upgrade through Homebrew instead, run:

```sh
brew upgrade --cask --greedy unstoppable-code
```

## Uninstall

```sh
brew uninstall --cask unstoppable-code
```

This removes the app and keeps your projects and settings. To also remove
caches and preferences, add `--zap`. Your workspaces in `~/.unstoppable-code`
are never removed.

## Maintenance

Stable releases update the cask's version and checksums automatically. Each
cask downloads the signed and notarized builds published at
`releases.unstoppable.ai`; this repository does not host app binaries.
