class Resto < Formula
  desc "Minimalist CLI REST client that calls APIs, waits for conditions, and retries intelligently."
  homepage "https://github.com/lucasepe/resto/"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lucasepe/resto/releases/download/v0.2.2/resto-darwin.zip"
      sha256 "d5ffbc96ca1233f76170e0e43af6b3feb0c28177b77c10b2fdde40195a7ae86e"

      def install
        bin.install "resto"
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
