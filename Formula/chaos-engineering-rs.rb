class ChaosEngineeringRs < Formula
  desc "Cross-platform chaos engineering CLI with recovery and SLO gates"
  homepage "https://github.com/Ninian-Lemain/chaos-engineering-rs"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Ninian-Lemain/chaos-engineering-rs/releases/download/v0.2.0/chaos-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "ac746c8829f4fdd75e8536d9643eca91dbc8e8bb74d7fb8535f3285337372451"
    end
    on_intel do
      url "https://github.com/Ninian-Lemain/chaos-engineering-rs/releases/download/v0.2.0/chaos-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "001888cfd4d2b0087772d05e802a282c3eb830bff8d41671ce0d1a4834132900"
    end
  end

  on_linux do
    url "https://github.com/Ninian-Lemain/chaos-engineering-rs/releases/download/v0.2.0/chaos-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "788e757696ed4701a14b1d15197e60aee1482df197eb1edd9a3e272068a20d9d"
  end

  def install
    bin.install "chaos"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chaos --version")
  end
end
