class Inlet < Formula
  desc "Expose local HTTP apps through stable public URLs"
  homepage "https://github.com/ynui/inlet"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/ynui/inlet/releases/download/v0.2.0/inlet-v0.2.0-darwin-arm64.tar.gz"
      sha256 "770c20d183708451b0ff925210291307efb16e8c116582f36c3fc004097ab58c"
    end
    on_intel do
      url "https://github.com/ynui/inlet/releases/download/v0.2.0/inlet-v0.2.0-darwin-amd64.tar.gz"
      sha256 "df967e90fe264bc9c63c21413aed69bd5f28686ac5a57aafda6fd641142a8d6f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ynui/inlet/releases/download/v0.2.0/inlet-v0.2.0-linux-arm64.tar.gz"
      sha256 "37c439893c28d14cab75f404a49bc00a095d630255a0018941669bb5814c3134"
    end
    on_intel do
      url "https://github.com/ynui/inlet/releases/download/v0.2.0/inlet-v0.2.0-linux-amd64.tar.gz"
      sha256 "55cc1d6047aed0283a8a400eeb7f5601fe51a9040fe0fe1fd3f21bb91cb86b32"
    end
  end

  def install
    bin.install "inlet"
  end

  test do
    assert_match "inlet", shell_output("#{bin}/inlet version")
  end
end
