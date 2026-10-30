class Inlet < Formula
  desc "Expose local HTTP apps through stable public URLs"
  homepage "https://github.com/ynui/inlet"
  version "0.0.2"

  on_macos do
    on_arm do
      url "https://github.com/ynui/inlet/releases/download/v0.0.2/inlet-v0.0.2-darwin-arm64.tar.gz"
      sha256 "bd97937174c268ac329dc5905dff05d17c8b00e1d7d60bbc80c4c892e3a2a561"
    end
    on_intel do
      url "https://github.com/ynui/inlet/releases/download/v0.0.2/inlet-v0.0.2-darwin-amd64.tar.gz"
      sha256 "1b51201a35dbb714de4ce968e5c4763b170b0342bff4f7ddfaf80ab4e7b26105"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ynui/inlet/releases/download/v0.0.2/inlet-v0.0.2-linux-arm64.tar.gz"
      sha256 "bd67924147cac11adc12387381189bc4ad9803c64bc9010b65c55e09b64fd4c3"
    end
    on_intel do
      url "https://github.com/ynui/inlet/releases/download/v0.0.2/inlet-v0.0.2-linux-amd64.tar.gz"
      sha256 "63228430f9d7bbab6487399f11cd4a059649f6b0ed0096a7ad503a5bdbcde5d2"
    end
  end

  def install
    bin.install "inlet", "inletd", "inlet-admin"
  end

  test do
    assert_match "inlet", shell_output("#{bin}/inlet version")
  end
end
