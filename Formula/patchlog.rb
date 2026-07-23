class Patchlog < Formula
  desc "Safely coordinate release notes, version bumps, tags, and pushes"
  homepage "https://github.com/fxdv/patchlog"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fxdv/patchlog/releases/download/v0.1.3/patchlog_v0.1.3_darwin_arm64.tar.gz"
      sha256 "4200d54cae6891f5d994704b11e621064ba5af7b98cd0615f4af3b66f537a2d3"
    else
      url "https://github.com/fxdv/patchlog/releases/download/v0.1.3/patchlog_v0.1.3_darwin_amd64.tar.gz"
      sha256 "90b6602e7cfd224b4af6ed6765993527d12c943b70f2e2ac8cf62b46479574a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fxdv/patchlog/releases/download/v0.1.3/patchlog_v0.1.3_linux_arm64.tar.gz"
      sha256 "be8e53282643ae348dd773379743496a0b652c50190801c87eca673b01b53ae9"
    else
      url "https://github.com/fxdv/patchlog/releases/download/v0.1.3/patchlog_v0.1.3_linux_amd64.tar.gz"
      sha256 "50b3373a6d02db70d1d6e284366a37b5c1efe6f7959065a343064a1e98d1c9b4"
    end
  end

  def install
    bin.install "patchlog"
  end

  test do
    assert_equal "patchlog v#{version}", shell_output("#{bin}/patchlog --version").strip
  end
end
