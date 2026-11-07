# Written by the release workflow (apps/cli/scripts/homebrew-formula.mjs); edits here are overwritten.
class Kratos < Formula
  desc "Mindful, controllable coding-agent harness"
  homepage "https://github.com/ameerthehacker/kratos"
  version "0.8.0"

  on_macos do
    on_arm do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.8.0/kratos-0.8.0-darwin-arm64.tar.gz"
      sha256 "feb2c4f7756d5e2f17887b293dcbab63eefbf610ddfd38c8798d99019c1aea0e"
    end
    on_intel do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.8.0/kratos-0.8.0-darwin-x64.tar.gz"
      sha256 "98436f84ac1556a94dae4fc8cd21761198ad9e30aa33b7ac89ba7d91390d2248"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.8.0/kratos-0.8.0-linux-arm64.tar.gz"
      sha256 "0dc8c35acb8f7a15a71ede35d4cd84464d415bf94e2e2791366df9aea0125a29"
    end
    on_intel do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.8.0/kratos-0.8.0-linux-x64.tar.gz"
      sha256 "967834cc049455d611debe3490aed9371d29a46fa53a35209b83a9c74954a29d"
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
