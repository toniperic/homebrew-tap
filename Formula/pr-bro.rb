class PrBro < Formula
  desc "Prioritize your GitHub PR review queue"
  homepage "https://github.com/toniperic/pr-bro"
  version "0.4.2"
  license "MIT"

  on_intel do
    url "https://github.com/toniperic/pr-bro/releases/download/v0.4.2/pr-bro-v0.4.2-x86_64-apple-darwin.tar.gz"
    sha256 "cae276cf88fedeff233e5e75feb6c6266013c01f556d5f78c1120e5905e15bed"
  end

  on_arm do
    url "https://github.com/toniperic/pr-bro/releases/download/v0.4.2/pr-bro-v0.4.2-aarch64-apple-darwin.tar.gz"
    sha256 "bc223c5825c6b3db185b05275fcb010d3e0a06bde4ce9defb2e1bd8ba5515d30"
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
