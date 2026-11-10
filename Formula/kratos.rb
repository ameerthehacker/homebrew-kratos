# Written by the release workflow (apps/cli/scripts/homebrew-formula.mjs); edits here are overwritten.
class Kratos < Formula
  desc "Mindful, controllable coding-agent harness"
  homepage "https://github.com/ameerthehacker/kratos"
  version "0.16.0"

  on_macos do
    on_arm do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.16.0/kratos-0.16.0-darwin-arm64.tar.gz"
      sha256 "e2a6e99bea826be52f1b64cc5058838b6af2a04ab9991e41d45d5b08d167ba87"
    end
    on_intel do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.16.0/kratos-0.16.0-darwin-x64.tar.gz"
      sha256 "8a0f3fd828d732d710b5ae10c04ffed84a051c2ee160be93c84658d45e31759a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.16.0/kratos-0.16.0-linux-arm64.tar.gz"
      sha256 "b4bc2a02bdf30dd27b245a660c32d5ddf2eb2d09d740653e96850591667a33d7"
    end
    on_intel do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.16.0/kratos-0.16.0-linux-x64.tar.gz"
      sha256 "324aa62bad1c9c19baa0094891063190169e794319293f30cfb981cd8ffdbfde"
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
