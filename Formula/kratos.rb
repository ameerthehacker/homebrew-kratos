# Written by the release workflow (apps/cli/scripts/homebrew-formula.mjs); edits here are overwritten.
class Kratos < Formula
  desc "Mindful, controllable coding-agent harness"
  homepage "https://github.com/ameerthehacker/kratos"
  version "0.14.0"

  on_macos do
    on_arm do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.14.0/kratos-0.14.0-darwin-arm64.tar.gz"
      sha256 "d774e370ebecc5cc74824c0421770d22fe280d3242c24daf2e6e5bd26e6ff0ca"
    end
    on_intel do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.14.0/kratos-0.14.0-darwin-x64.tar.gz"
      sha256 "2c09bebd322991f661a3fbe586790bc3bc556aebe436d353e9d9ed5d7c23494c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.14.0/kratos-0.14.0-linux-arm64.tar.gz"
      sha256 "36dc676b85bb7b2088266f25315213d5d43d46ea2ea31c68d4cbfaf7248f3740"
    end
    on_intel do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.14.0/kratos-0.14.0-linux-x64.tar.gz"
      sha256 "a4617908670cf60727d023af0fc607599830f27fd2e58b71ede997e287c88fdc"
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
