class Checkit < Formula
  desc "Render your checklists into clean printable PDF documents."
  homepage "https://github.com/lucasepe/checkit/"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lucasepe/checkit/releases/download/v1.1.0/checkit-darwin.zip"
      sha256 "be1be27c76db5d1059e5b52273daa316a415d7178020ad69cd354e20a0fb9417"

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
