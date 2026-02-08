class PrBro < Formula
  desc "Prioritize your GitHub PR review queue"
  homepage "https://github.com/toniperic/pr-bro"
  version "0.3.1"
  license "MIT"

  on_intel do
    url "https://github.com/toniperic/pr-bro/releases/download/v0.3.1/pr-bro-v0.3.1-x86_64-apple-darwin.tar.gz"
    sha256 "4804611b3e807fef193f8e8ba01777ee0459a1f7f7d6b115533d94c2d6d04647"
  end

  on_arm do
    url "https://github.com/toniperic/pr-bro/releases/download/v0.3.1/pr-bro-v0.3.1-aarch64-apple-darwin.tar.gz"
    sha256 "9a30a54ab03a0b6e9e185a05208627d95d30da3bc35db587a517391f2cdd71ea"
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
