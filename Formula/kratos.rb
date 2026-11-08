# Written by the release workflow (apps/cli/scripts/homebrew-formula.mjs); edits here are overwritten.
class Kratos < Formula
  desc "Mindful, controllable coding-agent harness"
  homepage "https://github.com/ameerthehacker/kratos"
  version "0.12.0"

  on_macos do
    on_arm do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.12.0/kratos-0.12.0-darwin-arm64.tar.gz"
      sha256 "bb28fcfc4175685fceadd60da1cedd3005eca7f0d479116fd7a8bc2caf89012f"
    end
    on_intel do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.12.0/kratos-0.12.0-darwin-x64.tar.gz"
      sha256 "cc5da5ccf1dafaf9bda38e7e4f5187b2398e495c39fa52da0b031b35192e43bc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.12.0/kratos-0.12.0-linux-arm64.tar.gz"
      sha256 "822949193a875ffbf0fe3c4458b261e897d3f56b7df357f58f8b52afde8904b6"
    end
    on_intel do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.12.0/kratos-0.12.0-linux-x64.tar.gz"
      sha256 "5da9342733a52fb60d4604a92059240895d729be303d040b9f9e81057e292cc7"
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
