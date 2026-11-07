# Written by the release workflow (apps/cli/scripts/homebrew-formula.mjs); edits here are overwritten.
class Kratos < Formula
  desc "Mindful, controllable coding-agent harness"
  homepage "https://github.com/ameerthehacker/kratos"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.5.0/kratos-0.5.0-darwin-arm64.tar.gz"
      sha256 "bbc7575aad3bec19416c72c48c593cfe1ac6e1d6cc63b66f4031cf0110c34471"
    end
    on_intel do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.5.0/kratos-0.5.0-darwin-x64.tar.gz"
      sha256 "ee34b4b6d1b10a44d96d5cae247df4ace6821a8f2786373886e3fc24f2b3f2ba"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.5.0/kratos-0.5.0-linux-arm64.tar.gz"
      sha256 "9b6b3ac6620b49cdf2a239629d14b6c1beed578bf970bd9bb499c901baca21af"
    end
    on_intel do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.5.0/kratos-0.5.0-linux-x64.tar.gz"
      sha256 "aadabfa2dc08eee081d3501eb7fe7f0a844dd770b1baa43c8e84f5ab7f6a896b"
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
