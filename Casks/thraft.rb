# The Homebrew cask (0040 R6), filled in by the release job with the
# version and the DMG's SHA-256, then pushed to thrafthq/homebrew-tap as
# Casks/thraft.rb. Install with:
#
#   brew install --cask thrafthq/tap/thraft
#
# Thraft updates itself from inside the app (0151), so the cask says so:
# `brew upgrade` leaves an install that updated itself alone, and
# `brew upgrade --greedy` still moves it to the release this file names.
# Every release rewrites this file with its own version and checksum.
cask "thraft" do
  version "0.2818.0"
  sha256 "89601e9fc970b2127b2a861e4a6e1d189faa2c226891230ecdd02d5af0a4fcea"

  url "https://github.com/thrafthq/thraft/releases/download/v#{version}/Thraft-#{version}.dmg"
  name "Thraft"
  desc "Planning tool where agents collaborate on a living draft, not a chat"
  homepage "https://thraft.app/"

  auto_updates true
  # The bundle is built for macOS 13 and later (0039 D1).
  depends_on macos: :ventura

  app "Thraft.app"

  # The app home (0008 D1), under its name from 0.2.0 and the one it had
  # before (0149 D4); a project's own .thraft folder is the project's, not
  # the app's, and stays.
  zap trash: [
    "~/Library/Application Support/Plano",
    "~/Library/Application Support/Thraft",
  ]
end
