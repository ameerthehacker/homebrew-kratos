# Written by the release workflow (apps/cli/scripts/homebrew-formula.mjs); edits here are overwritten.
class Kratos < Formula
  desc "Mindful, controllable coding-agent harness"
  homepage "https://github.com/ameerthehacker/kratos"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.4.0/kratos-0.4.0-darwin-arm64.tar.gz"
      sha256 "53de0c2b543b4bde3684cf5be6c2135948ec930a0e695cd4a32787b69323e73e"
    end
    on_intel do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.4.0/kratos-0.4.0-darwin-x64.tar.gz"
      sha256 "380a6b086d6162b5db397c2840000ae1204bb63b895b6af8e3a324197092019e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.4.0/kratos-0.4.0-linux-arm64.tar.gz"
      sha256 "73842d0b5cf147f36f26ccad7f62cc7a1d9ceb62478dd2b2a4c98ce15e3d61f4"
    end
    on_intel do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.4.0/kratos-0.4.0-linux-x64.tar.gz"
      sha256 "b33616cc3e880f3d9ff8bf68ca26f2a6bdd143e6a779fd231dd47ee8fbc282c5"
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
