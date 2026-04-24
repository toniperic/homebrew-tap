class PrBro < Formula
  desc "Prioritize your GitHub PR review queue"
  homepage "https://github.com/toniperic/pr-bro"
  version "0.5.1"
  license "MIT"

  on_intel do
    url "https://github.com/toniperic/pr-bro/releases/download/v0.5.1/pr-bro-v0.5.1-x86_64-apple-darwin.tar.gz"
    sha256 "510bc3698e899a44c67a00695908e80adce1c3dfcd52dd1c71cc16c851f50a1b"
  end

  on_arm do
    url "https://github.com/toniperic/pr-bro/releases/download/v0.5.1/pr-bro-v0.5.1-aarch64-apple-darwin.tar.gz"
    sha256 "07c23f31f2a2e82288a9711a90bf3c747ac099c4807759415fced67720c3f907"
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
