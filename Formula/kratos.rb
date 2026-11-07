# Written by the release workflow (apps/cli/scripts/homebrew-formula.mjs); edits here are overwritten.
class Kratos < Formula
  desc "Mindful, controllable coding-agent harness"
  homepage "https://github.com/ameerthehacker/kratos"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.1.0/kratos-0.1.0-darwin-arm64.tar.gz"
      sha256 "06a6c4b4c82397a010fd95042024c564dd36243f9ef1172b51bbade5ba552c09"
    end
    on_intel do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.1.0/kratos-0.1.0-darwin-x64.tar.gz"
      sha256 "366c095c6814b1f69dd175a0b62ee6ccc8a9aef7078f8cfa3387f0d6e3d27235"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.1.0/kratos-0.1.0-linux-arm64.tar.gz"
      sha256 "d4753df077b6ae26930871b8f03b9c682e472639d6f89a1bafc65946d4d7c711"
    end
    on_intel do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.1.0/kratos-0.1.0-linux-x64.tar.gz"
      sha256 "3c8b9a1164c1c49f38d482535265b64bad0c7edfbc01379f3305f808b4feeaa2"
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
