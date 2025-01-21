class Dazed < Formula
  desc "Effortlessly combine images into your own defined layout"
  homepage "https://cli-tools.dev/posts/dazed/"
  version "0.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lucasepe/cli-tools/releases/download/v0.2.8/dazed-macos-arm64.zip"
      sha256 "47d689f2988aa6e81dab62b29baa45fb40e2d736b13c7b1f335b6da711513cd4"

      def install
        bin.install "dazed"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lucasepe/cli-tools/releases/download/v0.2.8/dazed-macos-x86_64.zip"
      sha256 "57163a15343be870f5cde18c681f5e9815d47077320f331e6f38242777140fa0"

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
