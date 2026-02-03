class PrBro < Formula
  desc "Prioritize your GitHub PR review queue"
  homepage "https://github.com/toniperic/pr-bro"
  version "0.2.0"
  license "MIT"

  on_intel do
    url "https://github.com/toniperic/pr-bro/releases/download/v0.2.0/pr-bro-v0.2.0-x86_64-apple-darwin.tar.gz"
    sha256 "e0d1e3b6f7c0f7d5a8946162e69c4aece25a3b7784511abdc768f7c3151401e6"
  end

  on_arm do
    url "https://github.com/toniperic/pr-bro/releases/download/v0.2.0/pr-bro-v0.2.0-aarch64-apple-darwin.tar.gz"
    sha256 "f655d5cb957d704cce876a512965f438bfbd07686bd7c870d275fcec9a233859"
  end

  def install
    bin.install "pr-bro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pr-bro --version")
  end

  def caveats
    <<~EOS
      pr-bro requires a GitHub Personal Access Token.

      More info: https://github.com/toniperic/pr-bro
    EOS
  end
end
