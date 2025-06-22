class Cirql < Formula
  desc "A simple, privacy-first command-line tool for managing contacts locally."
  homepage "https://github.com/lucasepe/cirql/"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lucasepe/cirql/releases/download/v1.0.1/cirql-darwin.zip"
      sha256 "a81b3091eb5f50fafbf5c5196f52d4b5e3dbd5589d0c12dc8c595274671e0243"

      def install
        bin.install "cirql"
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
