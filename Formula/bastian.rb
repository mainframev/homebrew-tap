class Bastian < Formula
  desc "Terminal Markdown reader"
  homepage "https://github.com/mainframev/bastian"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mainframev/bastian/releases/download/v0.2.0/bastian-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "73c6b438db61b8802c0e4462f16fab6e3af38956bc156936bddf938b2c0f5a6e"
    end
    on_intel do
      url "https://github.com/mainframev/bastian/releases/download/v0.2.0/bastian-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "754d90ef1fbcf671ac38e3b188f5994dfbd05acb4c984b0f0ddd49ee7587ab2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mainframev/bastian/releases/download/v0.2.0/bastian-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c1f32eb8439e057f676721d125159806387ff0245ebf5e0d532c3b62dfc5fc7c"
    end
    on_intel do
      url "https://github.com/mainframev/bastian/releases/download/v0.2.0/bastian-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "15cb29d73aeeac21f4730c9746cec07f9dacd94f9a84d4c75942525711d5f4cc"
    end
  end

  def install
    bin.install "bastian"
    generate_completions_from_executable(bin/"bastian", "completions")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bastian --version")
  end
end
