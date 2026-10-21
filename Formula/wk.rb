class Wk < Formula
  desc "Warm git worktrees for parallel agents, and cleanup of finished ones"
  homepage "https://github.com/zach-short/wk"
  url "https://github.com/zach-short/wk/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8f8b60ea12b0f9d0af56bf596ad684bb537bd8a78523e78032ac8ee890241bdd"
  head "https://github.com/zach-short/wk.git", branch: "main"

  depends_on "go" => :build
  depends_on :macos

  def install
    ENV["GOTOOLCHAIN"] = "local"
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "./cmd/wk"
  end

  test do
    assert_match "wk #{version}", shell_output("#{bin}/wk version")
  end
end
