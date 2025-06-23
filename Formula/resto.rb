class Resto < Formula
  desc "Minimalist CLI REST client that calls APIs, waits for conditions, and retries intelligently."
  homepage "https://github.com/lucasepe/resto/"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lucasepe/resto/releases/download/v0.2.0/resto-darwin.zip"
      sha256 "a03455fa51b7ef157937e5ddfda38f1f58513cc7972cf1bd59f49cb81f541f30"

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
