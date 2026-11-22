class Wk < Formula
  desc "Warm git worktrees for parallel agents, and cleanup of finished ones"
  homepage "https://github.com/zach-short/wk"
  version "0.1.11"

  depends_on :macos

  on_arm do
    url "https://github.com/zach-short/wk/releases/download/v0.1.11/wk_0.1.11_darwin_arm64.tar.gz"
    sha256 "f8be82da65a39bc8bec544b43b52f04e9b9a9201b514d5574b5fbc694d6adfb1"
  end
  on_intel do
    url "https://github.com/zach-short/wk/releases/download/v0.1.11/wk_0.1.11_darwin_amd64.tar.gz"
    sha256 "1d19d65aac0caa226a3e8f4a0647d5c30e911e1b2557c33c8c0fb17c0c8afd59"
  end

  def install
    bin.install "wk"
  end

  test do
    assert_match "wk #{version}", shell_output("#{bin}/wk version")
  end
end
