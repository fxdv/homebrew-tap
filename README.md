# Homebrew tap for Patchlog

Install the latest verified Patchlog release:

```bash
brew tap fxdv/tap
brew install patchlog
patchlog --version
```

`Formula/patchlog.rb` is sourced from the latest stable Patchlog GitHub release.
The tap workflow validates Ruby syntax and Homebrew style, installs the
checksum-pinned release archive on macOS, runs the formula test, and only then
commits an update.

Patchlog source, release checksums, and provenance verification instructions
are published at <https://github.com/fxdv/patchlog>.
