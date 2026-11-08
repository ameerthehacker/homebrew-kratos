# Written by the release workflow (apps/cli/scripts/homebrew-formula.mjs); edits here are overwritten.
class Kratos < Formula
  desc "Mindful, controllable coding-agent harness"
  homepage "https://github.com/ameerthehacker/kratos"
  version "0.13.0"

  on_macos do
    on_arm do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.13.0/kratos-0.13.0-darwin-arm64.tar.gz"
      sha256 "5a1b2819fc8a9b8331f214714fdfad23bb77e1e7d2a32c8c36aa85b2aee9aed9"
    end
    on_intel do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.13.0/kratos-0.13.0-darwin-x64.tar.gz"
      sha256 "340321fe3a7120ee4abb47dfb4f4bc84ed3598e874447dd781d4ecb7a558373d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.13.0/kratos-0.13.0-linux-arm64.tar.gz"
      sha256 "25c00cf7f33161d49675dae06633a54f8e122048077b7b7483650f7db43d12f7"
    end
    on_intel do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.13.0/kratos-0.13.0-linux-x64.tar.gz"
      sha256 "a9bf9267934425c26786d23d861a8dc2bd1de75c1236cd48b021337de0a7e51a"
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
