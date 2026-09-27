# The Homebrew cask (0040 R6), filled in by the release job with the
# version and the DMG's SHA-256, then pushed to thrafthq/homebrew-tap as
# Casks/thraft.rb. Install with:
#
#   brew install --cask thrafthq/tap/thraft
#
# `brew upgrade` moves to the next release, since every release rewrites
# this file with its own version and checksum.
#
# Until 0.2.0, the DMG and the app bundle keep the name Plano, so the url
# and the app below name Plano (0149). The 0.2.0 release rewrites this
# file from the template, which names Thraft.
cask "thraft" do
  version "0.1.22"
  sha256 "09dc9ba6ab2e9790bad227f3d0eeef372de44bc4a1d0d3810a21eb74b01f688b"

  url "https://github.com/thrafthq/thraft/releases/download/v#{version}/Plano-#{version}.dmg"
  name "Thraft"
  desc "Planning tool where agents collaborate on a living draft, not a chat"
  homepage "https://thraft.app/"

  # The bundle is built for macOS 13 and later (0039 D1).
  depends_on macos: :ventura

  app "Plano.app"

  # The app home (0008 D1), under its name from 0.2.0 and the one it had
  # before (0149 D4); a project's own .thraft folder is the project's, not
  # the app's, and stays.
  zap trash: [
    "~/Library/Application Support/Plano",
    "~/Library/Application Support/Thraft",
  ]
end
