class Checkit < Formula
  desc "Render your checklists into clean printable PDF documents."
  homepage "https://github.com/lucasepe/checkit/"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lucasepe/checkit/releases/download/v1.0.0/checkit-darwin.zip"
      sha256 "febeb2340118925173d2c955df413b02447517fac5e3c5af736acfd184472307"

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
