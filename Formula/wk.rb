class Wk < Formula
  desc "Warm git worktrees for parallel agents, and cleanup of finished ones"
  homepage "https://github.com/zach-short/wk"
  version "0.1.9"

  depends_on :macos

  on_arm do
    url "https://github.com/zach-short/wk/releases/download/v0.1.9/wk_0.1.9_darwin_arm64.tar.gz"
    sha256 "1281a9f3d566953d929bc57432cc1423d205663b391b0e1ac80bbc4ba9e09450"
  end
  on_intel do
    url "https://github.com/zach-short/wk/releases/download/v0.1.9/wk_0.1.9_darwin_amd64.tar.gz"
    sha256 "673478856619829dcaf7bbb6b607dc20ac1167629b433787a5d899bc6b1ad63c"
  end

  def install
    bin.install "wk"
  end

  test do
    assert_match "wk #{version}", shell_output("#{bin}/wk version")
  end
end
