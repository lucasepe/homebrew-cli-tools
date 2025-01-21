class Dazed < Formula
  desc "Effortlessly combine images into your own defined layout"
  homepage "https://cli-tools.dev/posts/dazed/"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lucasepe/cli-tools/releases/download/v0.2.8/dazed-macos-arm64.zip"
      sha256 "bb707c14f6a36a883d46e5046e029043bb0f86aabeaadc6f81d3714d3e3319fb"

      def install
        bin.install "dazed"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lucasepe/cli-tools/releases/download/v0.2.8/dazed-macos-x86_64.zip"
      sha256 "1d05585af6e77af3cf7d1010f6b35c48c30d7c9c817641c0bcdbf8269e465167"

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
