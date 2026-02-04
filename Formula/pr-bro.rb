require_relative "../lib/private_download_strategy"

class PrBro < Formula
  desc "Prioritize your GitHub PR review queue"
  homepage "https://github.com/toniperic/pr-bro"
  version "0.2.2"
  license "MIT"

  on_intel do
    url "https://github.com/toniperic/pr-bro/releases/download/v0.2.2/pr-bro-v0.2.2-x86_64-apple-darwin.tar.gz",
        using: GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "e707cefae0cc19fa39f08c8e98895a675e60acde697e7b867926a3e34c18df5b"
  end

  on_arm do
    url "https://github.com/toniperic/pr-bro/releases/download/v0.2.2/pr-bro-v0.2.2-aarch64-apple-darwin.tar.gz",
        using: GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "782d281334113867679f5394294b56fdd4261ecdf4fb0b9b175c4b593a9748a9"
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
