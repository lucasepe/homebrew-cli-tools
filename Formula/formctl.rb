class Formctl < Formula
  desc "Convert, fill, and sign forms and documents right from your terminal."
  homepage "https://github.com/lucasepe/formctl/"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lucasepe/formctl/releases/download/v0.5.0/formctl-darwin.zip"
      sha256 "a65b7d03d4439c7034d81db1da10c92c1c932454d259ec1a5e2180782701a248"

      def install
        bin.install "formctl"
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
