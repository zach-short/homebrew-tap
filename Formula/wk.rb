class Wk < Formula
  desc "Warm git worktrees for parallel agents, and cleanup of finished ones"
  homepage "https://github.com/zach-short/wk"
  version "0.1.0"

  depends_on :macos

  on_arm do
    url "https://github.com/zach-short/wk/releases/download/v0.1.0/wk_0.1.0_darwin_arm64.tar.gz"
    sha256 "4d7bed089cbc3be98f0df5421a80ac3815b5124f8ade138b7a8ddad002270a89"
  end
  on_intel do
    url "https://github.com/zach-short/wk/releases/download/v0.1.0/wk_0.1.0_darwin_amd64.tar.gz"
    sha256 "36cc0cb95ca491943b38157bb25b6b23acb325c991203ea81a81a699b4ca6963"
  end

  def install
    bin.install "wk"
  end

  test do
    assert_match "wk #{version}", shell_output("#{bin}/wk version")
  end
end
