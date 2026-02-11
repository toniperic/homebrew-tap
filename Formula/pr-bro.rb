class PrBro < Formula
  desc "Prioritize your GitHub PR review queue"
  homepage "https://github.com/toniperic/pr-bro"
  version "0.4.0"
  license "MIT"

  on_intel do
    url "https://github.com/toniperic/pr-bro/releases/download/v0.4.0/pr-bro-v0.4.0-x86_64-apple-darwin.tar.gz"
    sha256 "13ce623857be6dbf55f23e24a7791c9ca45a4b159fca65d943c0b9c1a0952627"
  end

  on_arm do
    url "https://github.com/toniperic/pr-bro/releases/download/v0.4.0/pr-bro-v0.4.0-aarch64-apple-darwin.tar.gz"
    sha256 "884e1712d667053c5eace4e56b30951c2dd19c4b04d9ce799b60eb3130176b19"
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
