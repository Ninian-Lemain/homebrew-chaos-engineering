class ChaosEngineeringRs < Formula
  desc "Cross-platform chaos engineering CLI with recovery and SLO gates"
  homepage "https://github.com/Ninian-Lemain/chaos-engineering-rs"
  version "0.4.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Ninian-Lemain/chaos-engineering-rs/releases/download/v0.4.1/chaos-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "0d35c4858800d24910b0019ae107c9b690c26a10468e3788a063047a87c3084c"
    end
    on_intel do
      url "https://github.com/Ninian-Lemain/chaos-engineering-rs/releases/download/v0.4.1/chaos-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "1a2e84e4b7096012b7aebc82c5aca33ef1f00df4d4a3acaf74656403a6351f1e"
    end
  end

  on_linux do
    url "https://github.com/Ninian-Lemain/chaos-engineering-rs/releases/download/v0.4.1/chaos-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "cb397d773684d34a3a0849ea2efbc6382a9eebfc3b5627b2c4da783373c17329"
  end

  def install
    bin.install "chaos"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chaos --version")
  end
end
