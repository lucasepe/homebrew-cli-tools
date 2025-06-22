class Checkit < Formula
  desc "Render your checklists into clean printable PDF documents."
  homepage "https://github.com/lucasepe/checkit/"
  version "1.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lucasepe/checkit/releases/download/v1.3.1/checkit-darwin.zip"
      sha256 "9261fcd9b651780ec771544a1cd719eb180f4efcebcd50a667b9ce43f7b8a883"

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
