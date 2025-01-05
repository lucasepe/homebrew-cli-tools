class Dazed < Formula
  desc "Effortlessly combine images into your own defined layout"
  homepage "https://cli-tools.dev/posts/dazed/"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lucasepe/cli-tools/releases/download/v0.2.6/dazed-macos-arm64.zip"
      sha256 "de43cc205e7b39d315b4e7806ce798dfaec63c0b11067379ed56ec1e15955f0e"

      def install
        bin.install "dazed"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lucasepe/cli-tools/releases/download/v0.2.6/dazed-macos-x86_64.zip"
      sha256 "f62e115058a32246b5435601d4368c80728d84c65ed55ad93c1a6324f15c63d6"

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
