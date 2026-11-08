# Written by the release workflow (apps/cli/scripts/homebrew-formula.mjs); edits here are overwritten.
class Kratos < Formula
  desc "Mindful, controllable coding-agent harness"
  homepage "https://github.com/ameerthehacker/kratos"
  version "0.10.0"

  on_macos do
    on_arm do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.10.0/kratos-0.10.0-darwin-arm64.tar.gz"
      sha256 "96282b339958ed35b4b0651c38dc9173ef1912c1d6f996ff59b4df60ae695bbd"
    end
    on_intel do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.10.0/kratos-0.10.0-darwin-x64.tar.gz"
      sha256 "36eca2acebe65ec2e32671941c02ceb751f87273dabc77381f534eb6fded4613"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.10.0/kratos-0.10.0-linux-arm64.tar.gz"
      sha256 "724b71d648b435a80a74e306c3b9d0fd3838a88fce85652351a71c2d33e9d243"
    end
    on_intel do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.10.0/kratos-0.10.0-linux-x64.tar.gz"
      sha256 "b32bb7b7824731aa85eb7db7ee9c1facfec366034db29e00193848902fabb3a3"
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
