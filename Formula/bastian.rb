class Bastian < Formula
  desc "Terminal Markdown reader"
  homepage "https://github.com/mainframev/bastian"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mainframev/bastian/releases/download/v0.3.0/bastian-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "550d43eb1e222056bfc29403d2fc0923b0d4e636fad818a958087642548899e2"
    end
    on_intel do
      url "https://github.com/mainframev/bastian/releases/download/v0.3.0/bastian-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "05c3c477f03e226017edcb538d5d41e74ff4c3a7962a045274b8b7fca035b295"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mainframev/bastian/releases/download/v0.3.0/bastian-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3c9a59e00792d56aef0199671f3cc2efc0865603099b3476cf66560b70cd5fce"
    end
    on_intel do
      url "https://github.com/mainframev/bastian/releases/download/v0.3.0/bastian-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "312623cef8b5ac05d9c6b02d88f6f3219fd4a319def667d5f06f3486c26b6053"
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
