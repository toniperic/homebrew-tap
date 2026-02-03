class PrBro < Formula
    desc "Prioritize your GitHub PR review queue"
    homepage "https://github.com/toniperic/pr-bro"
    version "0.0.0"
    license "MIT"

    on_intel do
      url "https://github.com/toniperic/pr-bro/releases/download/v0.0.0/pr-bro-v0.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end

    on_arm do
      url "https://github.com/toniperic/pr-bro/releases/download/v0.0.0/pr-bro-v0.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
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
