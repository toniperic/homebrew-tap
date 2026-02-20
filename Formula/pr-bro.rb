class PrBro < Formula
  desc "Prioritize your GitHub PR review queue"
  homepage "https://github.com/toniperic/pr-bro"
  version "0.4.1"
  license "MIT"

  on_intel do
    url "https://github.com/toniperic/pr-bro/releases/download/v0.4.1/pr-bro-v0.4.1-x86_64-apple-darwin.tar.gz"
    sha256 "fd29de7eebeeab72dfccf26aedcfddd18f68ae9e1ac4d4a99da0797f582da018"
  end

  on_arm do
    url "https://github.com/toniperic/pr-bro/releases/download/v0.4.1/pr-bro-v0.4.1-aarch64-apple-darwin.tar.gz"
    sha256 "18869e3c63141a6a04a781890ed512c170a198d4d8f3b1e9c6ae7e11e8a0efb4"
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
