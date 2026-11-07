# Written by the release workflow (apps/cli/scripts/homebrew-formula.mjs); edits here are overwritten.
class Kratos < Formula
  desc "Mindful, controllable coding-agent harness"
  homepage "https://github.com/ameerthehacker/kratos"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.6.0/kratos-0.6.0-darwin-arm64.tar.gz"
      sha256 "87b25c7d706018efeb0209e786c84591cfcc660d33cb09b77e6520b62efeb7df"
    end
    on_intel do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.6.0/kratos-0.6.0-darwin-x64.tar.gz"
      sha256 "ef8fff812b0c00aac101533ec14b1b2adde57e97a54cbdf69da83db03a91fffa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.6.0/kratos-0.6.0-linux-arm64.tar.gz"
      sha256 "11fae637b473d948ce3a59063bad8339e438a3bbd78210d65fb8bc4e90f04524"
    end
    on_intel do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.6.0/kratos-0.6.0-linux-x64.tar.gz"
      sha256 "164b9f6b91297bb24e1366b42f7a631c03e0351aa12194086880a4b402ef37a3"
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
