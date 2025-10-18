class Snipr < Formula
  desc "Turn your Markdown into a runnable script."
  homepage "https://github.com/lucasepe/snipr/"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lucasepe/snipr/releases/download/v0.8.0/snipr-darwin.zip"
      sha256 "3dd0becaaa0726e01043dc6c7a577217312e8f8c9099148c8d148e9bc57a0a0c"

      def install
        bin.install "snipr"
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
