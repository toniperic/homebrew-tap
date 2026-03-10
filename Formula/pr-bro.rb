class PrBro < Formula
  desc "Prioritize your GitHub PR review queue"
  homepage "https://github.com/toniperic/pr-bro"
  version "0.5.0"
  license "MIT"

  on_intel do
    url "https://github.com/toniperic/pr-bro/releases/download/v0.5.0/pr-bro-v0.5.0-x86_64-apple-darwin.tar.gz"
    sha256 "efeee1136b7c58fd8bb645bdef787cc8407bee24a5d6265fe4ca7ce94bd6552e"
  end

  on_arm do
    url "https://github.com/toniperic/pr-bro/releases/download/v0.5.0/pr-bro-v0.5.0-aarch64-apple-darwin.tar.gz"
    sha256 "da22234d5450171dbc80915d777aac0924e718fa36195d21fcfc6ce3b107463c"
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
