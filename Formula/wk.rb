class Wk < Formula
  desc "Warm git worktrees for parallel agents, and cleanup of finished ones"
  homepage "https://github.com/zach-short/wk"
  version "0.1.6"

  depends_on :macos

  on_arm do
    url "https://github.com/zach-short/wk/releases/download/v0.1.6/wk_0.1.6_darwin_arm64.tar.gz"
    sha256 "db3f3c1b66876acfbb76620225dc6ff1c969f79047a88f34a53ae9da5a53cab4"
  end
  on_intel do
    url "https://github.com/zach-short/wk/releases/download/v0.1.6/wk_0.1.6_darwin_amd64.tar.gz"
    sha256 "664b5daf33e45001bd3fb191e15b339e09ccc18c018a2175929db491004fef86"
  end

  def install
    bin.install "wk"
  end

  test do
    assert_match "wk #{version}", shell_output("#{bin}/wk version")
  end
end
