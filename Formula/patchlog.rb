class Patchlog < Formula
  desc "Safely coordinate release notes, version bumps, tags, and pushes"
  homepage "https://github.com/fxdv/patchlog"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fxdv/patchlog/releases/download/v0.1.4/patchlog_v0.1.4_darwin_arm64.tar.gz"
      sha256 "b050a80e5a14e2abf41e2a99dad1844b573c3c51b834acdbd9f9e69291a9044a"
    else
      url "https://github.com/fxdv/patchlog/releases/download/v0.1.4/patchlog_v0.1.4_darwin_amd64.tar.gz"
      sha256 "3bd235d1aacdb6355c4900d6606b6a128b7fc9960a015f8b1d70de014d0cc28b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fxdv/patchlog/releases/download/v0.1.4/patchlog_v0.1.4_linux_arm64.tar.gz"
      sha256 "481c8c0340d3de80377a2f3d66b740aaf60ca6a5cb7bd5f974a29d946d370604"
    else
      url "https://github.com/fxdv/patchlog/releases/download/v0.1.4/patchlog_v0.1.4_linux_amd64.tar.gz"
      sha256 "0a286b5b8210a9d5ef10e77e94d719e7adb0b643fedb8502f8ebb309fefc5109"
    end
  end

  def install
    # Homebrew strips the archive's single top-level directory before install.
    bin.install "patchlog"
  end

  test do
    assert_equal "patchlog v#{version}", shell_output("#{bin}/patchlog --version").strip
  end
end
