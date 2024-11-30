class Txtimg < Formula
  desc "Effortlessly transform any text into high-quality PNG images"
  homepage "https://cli-tools.dev/posts/txtimg/"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://dl.cli-tools.dev/txtimg/txtimg-macos-arm64.zip"
      sha256 "229fd7b95f7aa2ef69c0c1d80cabf1b6b443a118edd31b7abaf5f306d58fc3f2"

      def install
        bin.install "txtimg"
      end
    end
    if Hardware::CPU.intel?
      url "https://dl.cli-tools.dev/txtimg/txtimg-macos-x86_64.zip"
      sha256 "e336f16d43d84e1139c232126a0d4181b52c8a764cf5df78f3a9e1ae4bf8b5d4"

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
