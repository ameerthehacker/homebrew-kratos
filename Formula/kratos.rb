# Written by the release workflow (apps/cli/scripts/homebrew-formula.mjs); edits here are overwritten.
class Kratos < Formula
  desc "Mindful, controllable coding-agent harness"
  homepage "https://github.com/ameerthehacker/kratos"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.2.0/kratos-0.2.0-darwin-arm64.tar.gz"
      sha256 "6c24ba16b01bd7f8f70a419861404e4c445764543d1e52fea230a8cfc9095aa0"
    end
    on_intel do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.2.0/kratos-0.2.0-darwin-x64.tar.gz"
      sha256 "4c5857ef7fcd5403af3a4cba9bb5aec84ecd6e0e9b78e39f6b8642b3c4ddfc56"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.2.0/kratos-0.2.0-linux-arm64.tar.gz"
      sha256 "8381c9f697727c0c03599191a8a857bad6022f6177b555f5fe14214fbe659363"
    end
    on_intel do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.2.0/kratos-0.2.0-linux-x64.tar.gz"
      sha256 "4c8acbf8ba7c604303a1c8b9cb40ed4ce85384c0876b00511d1dffc04be70de6"
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
