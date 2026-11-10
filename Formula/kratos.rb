# Written by the release workflow (apps/cli/scripts/homebrew-formula.mjs); edits here are overwritten.
class Kratos < Formula
  desc "Mindful, controllable coding-agent harness"
  homepage "https://github.com/ameerthehacker/kratos"
  version "0.16.1"

  on_macos do
    on_arm do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.16.1/kratos-0.16.1-darwin-arm64.tar.gz"
      sha256 "d961887f0641a310a95eb87863a2c278be9688e4a6b1870c51f2d4339fc5b6c0"
    end
    on_intel do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.16.1/kratos-0.16.1-darwin-x64.tar.gz"
      sha256 "f32cc26ee6fca303c43c4d36cf30a594dc34f43bfe35f2d776e18dcdcca805c5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.16.1/kratos-0.16.1-linux-arm64.tar.gz"
      sha256 "71510db4619e0c7321d9155d4e1fffc6754423d6738656a427216ff9c4282235"
    end
    on_intel do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.16.1/kratos-0.16.1-linux-x64.tar.gz"
      sha256 "328941675200a27aa9e2c669dc2e96f551c4928d0fcafee9dc861d7bc6f9d9b2"
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
