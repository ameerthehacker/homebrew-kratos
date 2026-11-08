# Written by the release workflow (apps/cli/scripts/homebrew-formula.mjs); edits here are overwritten.
class Kratos < Formula
  desc "Mindful, controllable coding-agent harness"
  homepage "https://github.com/ameerthehacker/kratos"
  version "0.11.0"

  on_macos do
    on_arm do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.11.0/kratos-0.11.0-darwin-arm64.tar.gz"
      sha256 "aab19586d1581a13058b1e9bb155df8df5d6275d2b50f958966519b0ecada8ac"
    end
    on_intel do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.11.0/kratos-0.11.0-darwin-x64.tar.gz"
      sha256 "2642dbd37398faa96b2b6879c13b255c0c54614d28ae11447aa4684d74f36a09"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.11.0/kratos-0.11.0-linux-arm64.tar.gz"
      sha256 "474136d566a2ede78372250fc155328c7486ef1fc1e37561856afd9c317d3313"
    end
    on_intel do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.11.0/kratos-0.11.0-linux-x64.tar.gz"
      sha256 "819d1c948a11d495f504db7f8eff504614acde20c14c0432e697c5eb47aba5ad"
    end
  end

  def install
    bin.install "kratos"
  end

  def caveats
    <<~EOS
      Kratos drives the Claude Code CLI: install `claude` and sign in first.
      Then run `kratos` in a project folder; the UI opens in your browser.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kratos --version")
  end
end
