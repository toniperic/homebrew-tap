require_relative "../lib/private_download_strategy"

class PrBro < Formula
  desc "Prioritize your GitHub PR review queue"
  homepage "https://github.com/toniperic/pr-bro"
  version "0.2.0"
  license "MIT"

  on_intel do
    url "https://github.com/toniperic/pr-bro/releases/download/v0.2.0/pr-bro-v0.2.0-x86_64-apple-darwin.tar.gz",
        using: GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "04a3f0822c883218f2cd0d5bac0a1c9cab685d4f9e39c80d8e5000eed68fef8b"
  end

  on_arm do
    url "https://github.com/toniperic/pr-bro/releases/download/v0.2.0/pr-bro-v0.2.0-aarch64-apple-darwin.tar.gz",
        using: GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "31810cf748ab0b9300645dade47c96e4bef5908748bfe9485ab0268c17cd4942"
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
