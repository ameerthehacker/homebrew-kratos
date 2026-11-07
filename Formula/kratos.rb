# Written by the release workflow (apps/cli/scripts/homebrew-formula.mjs); edits here are overwritten.
class Kratos < Formula
  desc "Mindful, controllable coding-agent harness"
  homepage "https://github.com/ameerthehacker/kratos"
  version "0.7.0"

  on_macos do
    on_arm do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.7.0/kratos-0.7.0-darwin-arm64.tar.gz"
      sha256 "2f87be84987ba6776bc2602282988abe529f9683d2453d8a344376ea6193ecff"
    end
    on_intel do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.7.0/kratos-0.7.0-darwin-x64.tar.gz"
      sha256 "60ab8f7776cdbb44f8995b1a5c367147a83c05e3084c8913269ec8279467d854"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.7.0/kratos-0.7.0-linux-arm64.tar.gz"
      sha256 "88c05ab188f1f4e9bb92230ab327575cff461347a70860e1bf9a32ee50ff1734"
    end
    on_intel do
      url "https://github.com/ameerthehacker/kratos/releases/download/v0.7.0/kratos-0.7.0-linux-x64.tar.gz"
      sha256 "ccdcdefb8a9097ad81fe3ea2b84508413bf85d3cfe3b2c877215349b78fbb6ea"
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
