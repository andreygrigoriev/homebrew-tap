# Rendered by packaging/homebrew/render-formula.sh in andreygrigoriev/yfin-cli; do not edit by hand.
class Yfin < Formula
  desc "Yahoo Finance market data on the command line"
  homepage "https://github.com/andreygrigoriev/yfin-cli"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/andreygrigoriev/yfin-cli/releases/download/v0.1.0/yfin-0.1.0-darwin-arm64.tar.gz"
      sha256 "ccbe12ab3ec1489260e0b1b51682dfa3b72c2dc94c92c8d3493300b52ea2cc45"
    end
    on_intel do
      url "https://github.com/andreygrigoriev/yfin-cli/releases/download/v0.1.0/yfin-0.1.0-darwin-x64.tar.gz"
      sha256 "acb2ad61b949cb7882916b2259fdd8d6d46d26a415f349df434211eb379f257c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/andreygrigoriev/yfin-cli/releases/download/v0.1.0/yfin-0.1.0-linux-arm64.tar.gz"
      sha256 "5a20c5d5a3408ce670d85df608dbdccbc79fc4bb2b00f0e67e33f82a981add7f"
    end
    on_intel do
      url "https://github.com/andreygrigoriev/yfin-cli/releases/download/v0.1.0/yfin-0.1.0-linux-x64.tar.gz"
      sha256 "e3644dd33a58eb4e09185f0c5d29c48197fabe12fde0be176b6257871550db47"
    end
  end

  def install
    bin.install "yfin"
    generate_completions_from_executable(bin/"yfin", "completion", shells: [:bash, :zsh])
  end

  test do
    assert_match "yfin #{version}", shell_output("#{bin}/yfin --version")
  end
end
