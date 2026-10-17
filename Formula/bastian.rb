class Bastian < Formula
  desc "Terminal Markdown reader"
  homepage "https://github.com/mainframev/bastian"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mainframev/bastian/releases/download/v0.4.0/bastian-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "4b6b1d917e66a26b97b4eec4ceb90d5e662a0f435efb368b502aa0515deb726e"
    end
    on_intel do
      url "https://github.com/mainframev/bastian/releases/download/v0.4.0/bastian-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "1bc457c283eaf1b72f3b80ce35820fa4ab5a8dc96fce1a676f5b6182a34ed5c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mainframev/bastian/releases/download/v0.4.0/bastian-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "21597b33c97aa4e219445b97f51adc87c3ce59df86213371da05e6763c988c09"
    end
    on_intel do
      url "https://github.com/mainframev/bastian/releases/download/v0.4.0/bastian-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1d9e125feb28d84b3f757eb415db83bd4129f59394291741d7ccc744fef78cc1"
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
