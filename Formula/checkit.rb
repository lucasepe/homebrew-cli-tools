class Checkit < Formula
  desc "Render your checklists into clean printable PDF documents."
  homepage "https://github.com/lucasepe/checkit/"
  version "1.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lucasepe/checkit/releases/download/v1.3.0/checkit-darwin.zip"
      sha256 "cb2b7014c4ba3c892c8a67150335a47fd80e3416fa1a66ae59eef052cd6e52d2"

      def install
        bin.install "checkit"
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
