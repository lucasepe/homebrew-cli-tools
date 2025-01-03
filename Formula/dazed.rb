class Dazed < Formula
  desc "Effortlessly combine images into your own defined layout"
  homepage "https://cli-tools.dev/posts/dazed/"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lucasepe/cli-tools/releases/download/v0.2.5/dazed-macos-arm64.zip"
      sha256 "fd2b32fda70095dd3449b8deffe5684cbba17a63d310425f8d783488d1b163b4"

      def install
        bin.install "dazed"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lucasepe/cli-tools/releases/download/v0.2.5/dazed-macos-x86_64.zip"
      sha256 "d9d9eb713d6509b6d8a107987eaceccb5e295bf40d282200dfc4ff85508ffdec"

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
