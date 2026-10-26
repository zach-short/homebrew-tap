class Wk < Formula
  desc "Warm git worktrees for parallel agents, and cleanup of finished ones"
  homepage "https://github.com/zach-short/wk"
  version "0.1.10"

  depends_on :macos

  on_arm do
    url "https://github.com/zach-short/wk/releases/download/v0.1.10/wk_0.1.10_darwin_arm64.tar.gz"
    sha256 "d97f5196b47497a453eb344cc1f3a170bab2f5d2995f06d0808a1c18c38c549c"
  end
  on_intel do
    url "https://github.com/zach-short/wk/releases/download/v0.1.10/wk_0.1.10_darwin_amd64.tar.gz"
    sha256 "5ad8fa900f85843f77c717a8bb13d90f57116d6b13c00cc82826c7115530adc4"
  end

  def install
    bin.install "wk"
  end

  test do
    assert_match "wk #{version}", shell_output("#{bin}/wk version")
  end
end
