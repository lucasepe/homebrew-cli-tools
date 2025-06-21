class Resto < Formula
  desc "Minimalist CLI REST client that calls APIs, waits for conditions, and retries intelligently."
  homepage "https://github.com/lucasepe/resto/"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lucasepe/checkit/releases/download/v0.1.0/resto-darwin.zip"
      sha256 "786675330f4e3c3f73f1b932135a66740d7ce965d0f80a212b61633e0368d9cc"

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
