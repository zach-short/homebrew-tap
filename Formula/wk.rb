class Wk < Formula
  desc "Warm git worktrees for parallel agents, and cleanup of finished ones"
  homepage "https://github.com/zach-short/wk"
  version "0.1.4"

  depends_on :macos

  on_arm do
    url "https://github.com/zach-short/wk/releases/download/v0.1.4/wk_0.1.4_darwin_arm64.tar.gz"
    sha256 "110dcbb522290e65dd7be5e7c550ca2d25a69e03635c1d15d612d689a093e725"
  end
  on_intel do
    url "https://github.com/zach-short/wk/releases/download/v0.1.4/wk_0.1.4_darwin_amd64.tar.gz"
    sha256 "0217190e4d03ff3d071f15aa970e3b588f7a5d57ce22f7dbc5f3f8dcb99a7277"
  end

  def install
    bin.install "wk"
  end

  test do
    assert_match "wk #{version}", shell_output("#{bin}/wk version")
  end
end
