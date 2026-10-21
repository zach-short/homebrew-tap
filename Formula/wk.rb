class Wk < Formula
  desc "Warm git worktrees for parallel agents, and cleanup of finished ones"
  homepage "https://github.com/zach-short/wk"
  version "0.1.5"

  depends_on :macos

  on_arm do
    url "https://github.com/zach-short/wk/releases/download/v0.1.5/wk_0.1.5_darwin_arm64.tar.gz"
    sha256 "7fe99a645a8b99b320f96cd9c2b41e136d666c6a7bbb88fd7247389b7515bfab"
  end
  on_intel do
    url "https://github.com/zach-short/wk/releases/download/v0.1.5/wk_0.1.5_darwin_amd64.tar.gz"
    sha256 "b186fef48bfd495794e3f1825531b5367635e06fc9d22bc24726d306dc21a8fa"
  end

  def install
    bin.install "wk"
  end

  test do
    assert_match "wk #{version}", shell_output("#{bin}/wk version")
  end
end
