class PrBro < Formula
  desc "Prioritize your GitHub PR review queue"
  homepage "https://github.com/toniperic/pr-bro"
  version "0.2.0"
  license "MIT"

  on_intel do
    url do
      tag = "v0.2.0"
      asset_name = "pr-bro-#{tag}-x86_64-apple-darwin.tar.gz"
      release = GitHub.get_release("toniperic", "pr-bro", tag)
      asset = release.fetch("assets").find { |a| a["name"] == asset_name }.fetch("url")
      [asset, header: [
        "Accept: application/octet-stream",
        "Authorization: bearer #{GitHub::API.credentials}",
      ]]
    end
    sha256 "4bfdc5d8120fa71667c60e20c1814178e97cff0d1070499948e4894b532e89fd"
  end

  on_arm do
    url do
      tag = "v0.2.0"
      asset_name = "pr-bro-#{tag}-aarch64-apple-darwin.tar.gz"
      release = GitHub.get_release("toniperic", "pr-bro", tag)
      asset = release.fetch("assets").find { |a| a["name"] == asset_name }.fetch("url")
      [asset, header: [
        "Accept: application/octet-stream",
        "Authorization: bearer #{GitHub::API.credentials}",
      ]]
    end
    sha256 "9f9982e005ff55509fbadf0287b1a96adc94086f7be9bb599ef38857210b74f5"
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
