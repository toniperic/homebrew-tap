require_relative "../lib/private_download_strategy"

class PrBro < Formula
  desc "Prioritize your GitHub PR review queue"
  homepage "https://github.com/toniperic/pr-bro"
  version "0.2.1"
  license "MIT"

  on_intel do
    url "https://github.com/toniperic/pr-bro/releases/download/v0.2.1/pr-bro-v0.2.1-x86_64-apple-darwin.tar.gz",
        using: GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "5aebc96192f8949c925d1aecae6fc091d9b47601b1d2be5883de17d34d3d3630"
  end

  on_arm do
    url "https://github.com/toniperic/pr-bro/releases/download/v0.2.1/pr-bro-v0.2.1-aarch64-apple-darwin.tar.gz",
        using: GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "30249dfb9adddf9330244361795f1d846918c00a49710883605bb010e7146864"
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
