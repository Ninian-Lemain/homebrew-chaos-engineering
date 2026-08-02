class ChaosEngineeringRs < Formula
  desc "Cross-platform chaos engineering CLI with recovery and SLO gates"
  homepage "https://github.com/Ninian-Lemain/chaos-engineering-rs"
  version "0.2.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Ninian-Lemain/chaos-engineering-rs/releases/download/v0.2.1/chaos-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "71a3779b1236088624fdc0558c9a818d77f2b87f16683a938d98c54b5c756fda"
    end
    on_intel do
      url "https://github.com/Ninian-Lemain/chaos-engineering-rs/releases/download/v0.2.1/chaos-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "ab2c3d29f5c566f3e8db232c19ac7e4e06a8c9a4496c193ac8ad029bd8eebb39"
    end
  end

  on_linux do
    url "https://github.com/Ninian-Lemain/chaos-engineering-rs/releases/download/v0.2.1/chaos-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "05497bc837e34386d2f1f1968fa64367aeadb885754252665dcc3bbbc90780b7"
  end

  def install
    bin.install "chaos"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chaos --version")
  end
end
