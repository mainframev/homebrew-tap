class Bastian < Formula
  desc "Terminal Markdown reader"
  homepage "https://github.com/mainframev/bastian"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mainframev/bastian/releases/download/v0.4.1/bastian-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "50d56a1f8f66e2f00ee70a74c121eba99ca943ae5a7edb74108e849746031404"
    end
    on_intel do
      url "https://github.com/mainframev/bastian/releases/download/v0.4.1/bastian-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "86838542e88c4a2eafa405f2a3792053cc3b126f84e510da7d596d4814e8b2e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mainframev/bastian/releases/download/v0.4.1/bastian-v0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f98bdd4ed75a94af56aaa34e3c52e22a3a6dea0d858922bfb06b678e5c8c69fd"
    end
    on_intel do
      url "https://github.com/mainframev/bastian/releases/download/v0.4.1/bastian-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1aeba0d9bd24d620b8b4b597efa5f1aa5b358c3354e567213a510f726c8d3237"
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
