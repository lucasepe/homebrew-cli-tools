class Drop < Formula
  desc "Lightweight and secure HTTP server for hosting static files from a specified directory"
  homepage "https://cli-tools.dev/posts/drop/"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lucasepe/drop/releases/download/v0.3.0/drop-macos-arm64.zip"
      sha256 "43a04bc1996bd47353f42d00729546bcb75ceb0c0587429a948af2856663addb"

      def install
        bin.install "drop"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lucasepe/drop/releases/download/v0.3.0/drop-macos-x86_64.zip"
      sha256 "cd6ac802de28089cb85221f8f184ab29b39a64154638c032443b7764b8de5ac6"

      def install
        bin.install "drop"
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
