class CirQL < Formula
  desc "A simple, privacy-first command-line tool for managing contacts locally."
  homepage "https://github.com/lucasepe/cirql/"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lucasepe/cirql/releases/download/v1.0.0/cirql-darwin.zip"
      sha256 "9cc73fe04aef98eac010ef5875ca5dc197fe49fee408db17f17eae9cc874443f"

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
