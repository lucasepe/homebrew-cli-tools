class Dazed < Formula
  desc "Effortlessly combine images into your own defined layout"
  homepage "https://cli-tools.dev/posts/dazed/"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lucasepe/cli-tools/releases/download/v0.2.7/dazed-macos-arm64.zip"
      sha256 "4a532294987d460c49dc0c519bafa54d57d0a5551ba4d2599c3de759187941bf"

      def install
        bin.install "dazed"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lucasepe/cli-tools/releases/download/v0.2.7/dazed-macos-x86_64.zip"
      sha256 "57cf0a1904497ce5cbae723cdf3c9a5057a7a5ad8018178503566bcde1f46e52"

      def install
        bin.install "dazed"
      end
    end
  end

  def caveats
    <<~EOS
      If you find this tool helpful consider supporting with a donation.
      Every bit helps cover development time and fuels future improvements.

      Your support truly makes a difference — thank you!

        * https://www.paypal.com/donate/?hosted_button_id=FV575PVWGXZBY
    EOS
  end
end
