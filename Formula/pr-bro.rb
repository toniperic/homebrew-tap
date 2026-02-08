class PrBro < Formula
  desc "Prioritize your GitHub PR review queue"
  homepage "https://github.com/toniperic/pr-bro"
  version "0.3.2"
  license "MIT"

  on_intel do
    url "https://github.com/toniperic/pr-bro/releases/download/v0.3.2/pr-bro-v0.3.2-x86_64-apple-darwin.tar.gz"
    sha256 "29ab6c23a07b020e1e1ce8fda930702be96de657ba62ab96a1b8e968a1f2e8c3"
  end

  on_arm do
    url "https://github.com/toniperic/pr-bro/releases/download/v0.3.2/pr-bro-v0.3.2-aarch64-apple-darwin.tar.gz"
    sha256 "fc687a301f662712b363bba61d879e47bba93d9f1748faee426c940d6190c186"
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
