class Wk < Formula
  desc "Warm git worktrees for parallel agents, and cleanup of finished ones"
  homepage "https://github.com/zach-short/wk"
  version "0.1.7"

  depends_on :macos

  on_arm do
    url "https://github.com/zach-short/wk/releases/download/v0.1.7/wk_0.1.7_darwin_arm64.tar.gz"
    sha256 "30923922a9d1fd6f711574c336b94a3fe39a9e1fb3f041f961d38d69bb584a30"
  end
  on_intel do
    url "https://github.com/zach-short/wk/releases/download/v0.1.7/wk_0.1.7_darwin_amd64.tar.gz"
    sha256 "f030dbea140b9bf1e7bf58f6e2126f0e749fbaea0d85cc2051c446069dfbd0d9"
  end

  def install
    bin.install "wk"
  end

  test do
    assert_match "wk #{version}", shell_output("#{bin}/wk version")
  end
end
