class Msgdrop < Formula
  desc "Delivery WhatsApp text messages, images or documents to a list of contacts"
  homepage "https://cli-tools.dev/posts/msgdrop/"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lucasepe/cli-tools/releases/download/v0.1.0/msgdrop-macos-arm64.zip"
      sha256 "7df96badb3f018fffd27a56e93182cd45abcd155acc1b966e37f96e30e0a6383"

      def install
        bin.install "msgdrop"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lucasepe/cli-tools/releases/download/v0.1.0/msgdrop-macos-x86_64.zip"
      sha256 "42d983497a7f5683a1162f0cee5c48f29aa3af5f5c72c50fdfec2113444226c2"

      def install
        bin.install "msgdrop"
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
