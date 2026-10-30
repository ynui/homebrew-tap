class Inlet < Formula
  desc "Expose local HTTP apps through stable public URLs"
  homepage "https://github.com/ynui/inlet"
  version "0.0.3"

  on_macos do
    on_arm do
      url "https://github.com/ynui/inlet/releases/download/v0.0.3/inlet-v0.0.3-darwin-arm64.tar.gz"
      sha256 "1fe5306cd33d3c4af34c840f734fd742cda988d242466ea8cc866e72d03d8553"
    end
    on_intel do
      url "https://github.com/ynui/inlet/releases/download/v0.0.3/inlet-v0.0.3-darwin-amd64.tar.gz"
      sha256 "118a73d96fc874bf0f63f50a95576192dc873b2ca8953750839b43c643a90b86"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ynui/inlet/releases/download/v0.0.3/inlet-v0.0.3-linux-arm64.tar.gz"
      sha256 "afea972faaa6bca38b09aee32e9c343e03ae36900bef717507d8fdffd3c49386"
    end
    on_intel do
      url "https://github.com/ynui/inlet/releases/download/v0.0.3/inlet-v0.0.3-linux-amd64.tar.gz"
      sha256 "13a74aff0669db6354f3f39cfa51418e3d909562343a506e14d2a66ddd57ef6f"
    end
  end

  def install
    bin.install "inlet", "inletd", "inlet-admin"
  end

  test do
    assert_match "inlet", shell_output("#{bin}/inlet version")
  end
end
