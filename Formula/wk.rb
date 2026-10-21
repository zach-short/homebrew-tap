class Wk < Formula
  desc "Warm git worktrees for parallel agents, and cleanup of finished ones"
  homepage "https://github.com/zach-short/wk"
  version "0.1.3"

  depends_on :macos

  on_arm do
    url "https://github.com/zach-short/wk/releases/download/v0.1.3/wk_0.1.3_darwin_arm64.tar.gz"
    sha256 "98bd83d959af14c7be11adac8e6a5635b9dcf442b446ca271d589f56aa684832"
  end
  on_intel do
    url "https://github.com/zach-short/wk/releases/download/v0.1.3/wk_0.1.3_darwin_amd64.tar.gz"
    sha256 "2f6d4e262e94ceb7071e3f3eb1320e8b0d53f3b2ef95a245e7f5aa74f9e27988"
  end

  def install
    bin.install "wk"
  end

  test do
    assert_match "wk #{version}", shell_output("#{bin}/wk version")
  end
end
