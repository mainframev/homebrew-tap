class Bastian < Formula
  desc "Terminal Markdown reader"
  homepage "https://github.com/mainframev/bastian"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mainframev/bastian/releases/download/v0.1.0/bastian-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "37e20343ac59374134af16ef695d68fef949279878c5c39cb5cae3131176b744"
    end
    on_intel do
      url "https://github.com/mainframev/bastian/releases/download/v0.1.0/bastian-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "5bb69eb3f690787796952f7e7aa334d4e2e1ef0413609f15d5ecdf1ff930ba06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mainframev/bastian/releases/download/v0.1.0/bastian-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9554a85197562ec2a618f2217684c7918ea0637d2b450b0c13d2b199b12f18f8"
    end
    on_intel do
      url "https://github.com/mainframev/bastian/releases/download/v0.1.0/bastian-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "04dae5476b37e7e3dd4f25fac4829eb489bebc86aae5ef08b354a4044552d1d5"
    end
  end

  def install
    bin.install "bastian"
    generate_completions_from_executable(bin/"bastian", "completions")
    (man1/"bastian.1").write Utils.safe_popen_read(bin/"bastian", "man")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bastian --version")
  end
end
