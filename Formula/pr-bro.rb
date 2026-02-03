class PrBro < Formula
  desc "Prioritize your GitHub PR review queue"
  homepage "https://github.com/toniperic/pr-bro-rust"
  version "0.2.0"
  license "MIT"

  on_intel do
    url "https://github.com/toniperic/pr-bro-rust/releases/download/v0.2.0/pr-bro-v0.2.0-x86_64-apple-darwin.tar.gz"
    sha256 "049bfba47a0f18254ec1903224612863bec099e2d29c89584681b6e492dd520b"
  end

  on_arm do
    url "https://github.com/toniperic/pr-bro-rust/releases/download/v0.2.0/pr-bro-v0.2.0-aarch64-apple-darwin.tar.gz"
    sha256 "06e2fa1fb8e2d7bb92668742b1ce614299ce40cfba1bec63dc382fcfabcf2221"
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

      Set your token:
        export PR_BRO_GH_TOKEN=your_token_here

      Add this to your shell config (~/.zshrc or ~/.bash_profile).

      Get started:
        pr-bro --help

      More info: https://github.com/toniperic/pr-bro-rust
    EOS
  end
end
