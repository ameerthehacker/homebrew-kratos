# Written by the release workflow (apps/cli/scripts/homebrew-formula.mjs); edits here are overwritten.
class Kratos < Formula
  desc "Mindful, controllable coding-agent harness"
  homepage "https://github.com/ameerthehacker/kratos"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.3.0/kratos-0.3.0-darwin-arm64.tar.gz"
      sha256 "177ecdf90ee704974b854419ae211012a362b818967deaa6bb4358534415f56c"
    end
    on_intel do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.3.0/kratos-0.3.0-darwin-x64.tar.gz"
      sha256 "d9ea601f3aca57c50c88e59c1e6e15ea3e1802f0063903951a27a5ad30915331"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.3.0/kratos-0.3.0-linux-arm64.tar.gz"
      sha256 "4cf5970c1324719fb544c82975667f677a401ca139cf3a73bb357a3d0b2df5c6"
    end
    on_intel do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.3.0/kratos-0.3.0-linux-x64.tar.gz"
      sha256 "7c093317c0afed2b657f4a5c6a947561fed614b8fca8b6a8b492d670ba401860"
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
