class Wk < Formula
  desc "Warm git worktrees for parallel agents, and cleanup of finished ones"
  homepage "https://github.com/zach-short/wk"
  version "0.1.2"

  depends_on :macos

  on_arm do
    url "https://github.com/zach-short/wk/releases/download/v0.1.2/wk_0.1.2_darwin_arm64.tar.gz"
    sha256 "2b7d138a7dc17c514df490ad30c38f79dc5f457ca89fe64273cdacde52da9bac"
  end
  on_intel do
    url "https://github.com/zach-short/wk/releases/download/v0.1.2/wk_0.1.2_darwin_amd64.tar.gz"
    sha256 "052c571ceab7d6b6a969a0e12bc0e33cff9328bb1ef98bdff78a0561822e7ee5"
  end

  def install
    bin.install "wk"
  end

  test do
    assert_match "wk #{version}", shell_output("#{bin}/wk version")
  end
end
