class PrBro < Formula
  desc "Prioritize your GitHub PR review queue"
  homepage "https://github.com/toniperic/pr-bro"
  version "0.3.0"
  license "MIT"

  on_intel do
    url "https://github.com/toniperic/pr-bro/releases/download/v0.3.0/pr-bro-v0.3.0-x86_64-apple-darwin.tar.gz"
    sha256 "7d54a0ab80f4cbe9a029372370d9cbf92e1af48566df0c1fc8b4acecd05df1bc"
  end

  on_arm do
    url "https://github.com/toniperic/pr-bro/releases/download/v0.3.0/pr-bro-v0.3.0-aarch64-apple-darwin.tar.gz"
    sha256 "25cc612214dc5880bb8a069356a8eb110009e1afc5aeac8b0bec7ed6d3ac352b"
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
