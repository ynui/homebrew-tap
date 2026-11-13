class Inlet < Formula
  desc "Expose local HTTP apps through stable public URLs"
  homepage "https://github.com/ynui/inlet"
  version "0.2.2"

  on_macos do
    on_arm do
      url "https://github.com/ynui/inlet/releases/download/v0.2.2/inlet-v0.2.2-darwin-arm64.tar.gz"
      sha256 "2eba3925c911af20eeea7ddabe5b66d4762cceacb56272c5817ed228461e92b3"
    end
    on_intel do
      url "https://github.com/ynui/inlet/releases/download/v0.2.2/inlet-v0.2.2-darwin-amd64.tar.gz"
      sha256 "32dd7ac7bfcfb197eae695a82732e4f1a7db67cead789f9111bd2d5afb50063c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ynui/inlet/releases/download/v0.2.2/inlet-v0.2.2-linux-arm64.tar.gz"
      sha256 "db611aeab58e5faf94b836e70f80091cf1bd4a03cdc195f9629c76d8771e100d"
    end
    on_intel do
      url "https://github.com/ynui/inlet/releases/download/v0.2.2/inlet-v0.2.2-linux-amd64.tar.gz"
      sha256 "472805f1d3b01de86140f57371e636916a35918b7f4fd7baafe6c6f9a8e28700"
    end
  end

  def install
    bin.install "inlet"
  end

  test do
    assert_match "inlet", shell_output("#{bin}/inlet version")
  end
end
