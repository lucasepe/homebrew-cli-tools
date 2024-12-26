class Txtimg < Formula
  desc "Effortlessly transform any text into high-quality PNG images"
  homepage "https://cli-tools.dev/posts/txtimg/"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lucasepe/cli-tools/releases/download/v0.2.4/txtimg-macos-arm64.zip"
      sha256 "7add5286491911d27244237f52ac5eaac7847d7c176526826ad43603e959058c"

      def install
        bin.install "txtimg"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lucasepe/cli-tools/releases/download/v0.2.4/txtimg-macos-x86_64.zip"
      sha256 "580ba2bff12a5335108eb5f46bcc39bfc69ce2e54e07076f58bbd2b5c3d68152"

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
