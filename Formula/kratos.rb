# Written by the release workflow (apps/cli/scripts/homebrew-formula.mjs); edits here are overwritten.
class Kratos < Formula
  desc "Mindful, controllable coding-agent harness"
  homepage "https://github.com/ameerthehacker/kratos"
  version "0.15.0"

  on_macos do
    on_arm do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.15.0/kratos-0.15.0-darwin-arm64.tar.gz"
      sha256 "4a07ba4f1082d7e73b345bea73dd741408244aa82ada862e98c3f25320ec2f13"
    end
    on_intel do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.15.0/kratos-0.15.0-darwin-x64.tar.gz"
      sha256 "b67c8d194c6a5d41f811d856ccb7e5582d761e135cd4f1ce36a2c440158eeb40"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.15.0/kratos-0.15.0-linux-arm64.tar.gz"
      sha256 "38bfb9a7d879693ea7cd6fe1b8595a8a640e12fe17317ef0654078ad59d542e5"
    end
    on_intel do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.15.0/kratos-0.15.0-linux-x64.tar.gz"
      sha256 "8ee882d8178fdf36e78746803df98cfff91abec8cb5dfba673a9738ee0f24783"
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
