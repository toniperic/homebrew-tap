class PrBro < Formula
  desc "Prioritize your GitHub PR review queue"
  homepage "https://github.com/toniperic/pr-bro"
  version "0.3.3"
  license "MIT"

  on_intel do
    url "https://github.com/toniperic/pr-bro/releases/download/v0.3.3/pr-bro-v0.3.3-x86_64-apple-darwin.tar.gz"
    sha256 "a77c92b0eae49d45879631d8d6d0329e68d414ec7e8b3ccc8569319ebe3936f9"
  end

  on_arm do
    url "https://github.com/toniperic/pr-bro/releases/download/v0.3.3/pr-bro-v0.3.3-aarch64-apple-darwin.tar.gz"
    sha256 "1ae3babe705f908b3fe50ca3178c00a066086efe2a3ad9146291a87f98ef3148"
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
