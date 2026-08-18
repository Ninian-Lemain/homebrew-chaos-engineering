class ChaosEngineeringRs < Formula
  desc "Cross-platform chaos engineering CLI with recovery and SLO gates"
  homepage "https://github.com/Ninian-Lemain/chaos-engineering-rs"
  version "0.4.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Ninian-Lemain/chaos-engineering-rs/releases/download/v0.4.2/chaos-v0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "1e99b4145e63674332a7b66f0efed7c635c9d0f94c4116eb25b92538a7985965"
    end
    on_intel do
      url "https://github.com/Ninian-Lemain/chaos-engineering-rs/releases/download/v0.4.2/chaos-v0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "e0be032a5bd37e4cc5e09186026afae20cea4608f7019a734db225288cefbde4"
    end
  end

  on_linux do
    url "https://github.com/Ninian-Lemain/chaos-engineering-rs/releases/download/v0.4.2/chaos-v0.4.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "99e86186b143c388983b976e20e24bd400e206d469592d514a4c4b406b5d224c"
  end

  def install
    bin.install "chaos"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chaos --version")
  end
end
