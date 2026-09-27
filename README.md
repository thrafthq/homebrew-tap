# Thraft for Homebrew

This tap installs [Thraft](https://thraft.app), a planning tool for macOS where you plan with agents in a shared document instead of a chat. Thraft needs macOS 13 or later.

## Install

```bash
brew install --cask thrafthq/tap/thraft
```

## Update

```bash
brew upgrade --cask thraft
```

The app also checks for updates on its own.

If you installed the cask when it was called `plano`, `brew upgrade` moves you to `thraft`.

## Uninstall

```bash
brew uninstall --cask thraft
```

## Releases

Release notes and DMGs are in [thrafthq/thraft](https://github.com/thrafthq/thraft). The release job rewrites `Casks/thraft.rb` on each release, so don't edit it by hand.
