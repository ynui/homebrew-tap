class Inlet < Formula
  desc "Expose local HTTP apps through stable public URLs"
  homepage "https://github.com/ynui/inlet"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/ynui/inlet/releases/download/v0.1.0/inlet-v0.1.0-darwin-arm64.tar.gz"
      sha256 "f4ce3916be735f89e382b12d21c07abffb85a598b62b82af783c2abbaf077d56"
    end
    on_intel do
      url "https://github.com/ynui/inlet/releases/download/v0.1.0/inlet-v0.1.0-darwin-amd64.tar.gz"
      sha256 "bbb01b14ef2a5e3c67383eea27aaede05b020720d4fac1dc6374daf95ab9a135"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ynui/inlet/releases/download/v0.1.0/inlet-v0.1.0-linux-arm64.tar.gz"
      sha256 "94083a4919e08c4d9a606b794982c8d7cd8fb662d45330c77a58398244d2223d"
    end
    on_intel do
      url "https://github.com/ynui/inlet/releases/download/v0.1.0/inlet-v0.1.0-linux-amd64.tar.gz"
      sha256 "d735e0d3a7d73568bd72dac19f1c42cc4cf4a6a6dc64301f255d7641e34520f2"
    end
  end

  def install
    bin.install "inlet"
  end

  test do
    assert_match "inlet", shell_output("#{bin}/inlet version")
  end
end
