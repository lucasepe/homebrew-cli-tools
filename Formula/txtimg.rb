class Txtimg < Formula
  desc "Effortlessly transform any text into high-quality PNG images"
  homepage "https://cli-tools.dev/posts/txtimg/"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lucasepe/cli-tools/releases/download/v0.2.3/txtimg-macos-arm64.zip"
      sha256 "3ae0430bf9184651ac98d606ad83cb744f25afecc28b2d6921d66d7a23223412"

      def install
        bin.install "txtimg"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lucasepe/cli-tools/releases/download/v0.2.3/txtimg-macos-x86_64.zip"
      sha256 "796fe45414600e4975416ddbc99d430ddab6b90abd2ba9f8b6914c8514259694"

      def install
        bin.install "txtimg"
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
