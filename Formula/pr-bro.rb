class PrBro < Formula
  desc "Prioritize your GitHub PR review queue"
  homepage "https://github.com/toniperic/pr-bro"
  version "0.3.4"
  license "MIT"

  on_intel do
    url "https://github.com/toniperic/pr-bro/releases/download/v0.3.4/pr-bro-v0.3.4-x86_64-apple-darwin.tar.gz"
    sha256 "2097d241a8b437984a61f5904e470b7db28351db595181f638c97d9e329b85ea"
  end

  on_arm do
    url "https://github.com/toniperic/pr-bro/releases/download/v0.3.4/pr-bro-v0.3.4-aarch64-apple-darwin.tar.gz"
    sha256 "dbbd4c6b642acdd61dce79460b63fbbbe47a024669b035c74e91305d5d042552"
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
