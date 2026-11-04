class Inlet < Formula
  desc "Expose local HTTP apps through stable public URLs"
  homepage "https://github.com/ynui/inlet"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://github.com/ynui/inlet/releases/download/v0.2.1/inlet-v0.2.1-darwin-arm64.tar.gz"
      sha256 "b57ecd439fd8793f789d338caade9cd45276d6000001fb90c218b7ecdcb661a0"
    end
    on_intel do
      url "https://github.com/ynui/inlet/releases/download/v0.2.1/inlet-v0.2.1-darwin-amd64.tar.gz"
      sha256 "acc10902047f3a2898be8bee06756acdede6f851be04d7cc4590c9304c8665fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ynui/inlet/releases/download/v0.2.1/inlet-v0.2.1-linux-arm64.tar.gz"
      sha256 "ee28c30b791de2aec3447f31b06f096c8ffb2b793128409a255b3f47ba8e8d64"
    end
    on_intel do
      url "https://github.com/ynui/inlet/releases/download/v0.2.1/inlet-v0.2.1-linux-amd64.tar.gz"
      sha256 "be79ea790c3b9775d9d6d5b286017f2cc304e20a54499caf1ddbf0ad3547627d"
    end
  end

  def install
    bin.install "inlet"
  end

  test do
    assert_match "inlet", shell_output("#{bin}/inlet version")
  end
end
