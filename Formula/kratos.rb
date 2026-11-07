# Written by the release workflow (apps/cli/scripts/homebrew-formula.mjs); edits here are overwritten.
class Kratos < Formula
  desc "Mindful, controllable coding-agent harness"
  homepage "https://github.com/ameerthehacker/kratos"
  version "0.9.0"

  on_macos do
    on_arm do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.9.0/kratos-0.9.0-darwin-arm64.tar.gz"
      sha256 "4e3c6640d3737d3deeddc231d0e2f97449c8b34b44378360aa8f810b03468532"
    end
    on_intel do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.9.0/kratos-0.9.0-darwin-x64.tar.gz"
      sha256 "58056ae98b114f52df61ae4a52571263d8fb08f2bc387c7a2f5afbb4b7f236f5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.9.0/kratos-0.9.0-linux-arm64.tar.gz"
      sha256 "2c90cc6da8fa03290a9c48e49f2b508dad1f714cacac2f70739ef64eed06a1a8"
    end
    on_intel do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.9.0/kratos-0.9.0-linux-x64.tar.gz"
      sha256 "393b10201ae21f57c2990504c0521f725c1529bf4c7f3a8bf0ac6ab18cf8fadf"
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
