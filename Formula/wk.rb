class Wk < Formula
  desc "Warm git worktrees for parallel agents, and cleanup of finished ones"
  homepage "https://github.com/zach-short/wk"
  version "0.1.8"

  depends_on :macos

  on_arm do
    url "https://github.com/zach-short/wk/releases/download/v0.1.8/wk_0.1.8_darwin_arm64.tar.gz"
    sha256 "ac71f7b59b8128e5a223d948618363c1950908acbb511ba610b2ef19b078463b"
  end
  on_intel do
    url "https://github.com/zach-short/wk/releases/download/v0.1.8/wk_0.1.8_darwin_amd64.tar.gz"
    sha256 "b88cde099fe1f6f6bc06f2a04e33028fd43bdb8df761738cb96d885feff12b1e"
  end

  def install
    bin.install "wk"
  end

  test do
    assert_match "wk #{version}", shell_output("#{bin}/wk version")
  end
end
