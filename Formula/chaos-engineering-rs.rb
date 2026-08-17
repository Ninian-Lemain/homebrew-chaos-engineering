class ChaosEngineeringRs < Formula
  desc "Cross-platform chaos engineering CLI with recovery and SLO gates"
  homepage "https://github.com/Ninian-Lemain/chaos-engineering-rs"
  version "0.4.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Ninian-Lemain/chaos-engineering-rs/releases/download/v0.4.0/chaos-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "a84f13d455fea13b1d9eba3d786d255af054835f059c0de1d3e6f6cd2e263aeb"
    end
    on_intel do
      url "https://github.com/Ninian-Lemain/chaos-engineering-rs/releases/download/v0.4.0/chaos-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "83f0aa07cb6952541aebe18665a7724d41b520a271db72d52a4dcbad794f3ff5"
    end
  end

  on_linux do
    url "https://github.com/Ninian-Lemain/chaos-engineering-rs/releases/download/v0.4.0/chaos-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2f7967a6347bf920476795dcef382209acc08f89c07a62d836106f2a5e9cc9f4"
  end

  def install
    bin.install "chaos"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chaos --version")
  end
end
