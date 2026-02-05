class PrBro < Formula
  desc "Prioritize your GitHub PR review queue"
  homepage "https://github.com/toniperic/pr-bro"
  version "0.2.4"
  license "MIT"

  on_intel do
    url "https://github.com/toniperic/pr-bro/releases/download/v0.2.4/pr-bro-v0.2.4-x86_64-apple-darwin.tar.gz"
    sha256 "e7024515226aebe1b2ae8963de3b548a247b2f04ef15058bb2834176d2e45896"
  end

  on_arm do
    url "https://github.com/toniperic/pr-bro/releases/download/v0.2.4/pr-bro-v0.2.4-aarch64-apple-darwin.tar.gz"
    sha256 "f47f27da4be73bb34fcc1e22c6a595f524d3d1081d18bf67fbe6dc096acf3c9d"
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
