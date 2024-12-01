class Txtimg < Formula
  desc "Effortlessly transform any text into high-quality PNG images"
  homepage "https://cli-tools.dev/posts/txtimg/"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lucasepe/cli-tools/releases/download/v0.1.0/txtimg-macos-arm64.zip"
      sha256 "576242ba8b0e16c89a0700ea2c9429c19314f2fd958b424e837e761f6650a3a0"

      def install
        bin.install "txtimg"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lucasepe/cli-tools/releases/download/v0.1.0/txtimg-macos-x86_64.zip"
      sha256 "63646eb7609da504d457da1f1525af0dbc38f1e7e590c3f5007c01d7d1663fe8"

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
