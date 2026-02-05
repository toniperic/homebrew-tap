class PrBro < Formula
  desc "Prioritize your GitHub PR review queue"
  homepage "https://github.com/toniperic/pr-bro"
  version "0.2.3"
  license "MIT"

  on_intel do
    url "https://github.com/toniperic/pr-bro/releases/download/v0.2.3/pr-bro-v0.2.3-x86_64-apple-darwin.tar.gz"
    sha256 "c76905dc584028a80ed11ce6591c22898439f5d6247d1b525ade68a1c2624647"
  end

  on_arm do
    url "https://github.com/toniperic/pr-bro/releases/download/v0.2.3/pr-bro-v0.2.3-aarch64-apple-darwin.tar.gz"
    sha256 "dcba7430fdb757943431338039f01a5798494f52ee5d257ac5212c0df3c040b9"
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
