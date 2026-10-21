class Wk < Formula
  desc "Warm git worktrees for parallel agents, and cleanup of finished ones"
  homepage "https://github.com/zach-short/wk"
  version "0.1.1"

  depends_on :macos

  on_arm do
    url "https://github.com/zach-short/wk/releases/download/v0.1.1/wk_0.1.1_darwin_arm64.tar.gz"
    sha256 "881485aa27ac538077eeff786929f2565b3d7bab45b73a1813551837084ad903"
  end
  on_intel do
    url "https://github.com/zach-short/wk/releases/download/v0.1.1/wk_0.1.1_darwin_amd64.tar.gz"
    sha256 "f38f1c63015d670148a1ca2a94f11be7b0383f3e9cc8018901c3be73196491c5"
  end

  def install
    bin.install "wk"
  end

  test do
    assert_match "wk #{version}", shell_output("#{bin}/wk version")
  end
end
