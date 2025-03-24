class Drop < Formula
  desc "Lightweight and secure HTTP server for hosting static files from a specified directory"
  homepage "https://cli-tools.dev/posts/drop/"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lucasepe/drop/releases/download/v0.2.0/drop-macos-arm64.zip"
      sha256 "bd2be0d766c03578c2ed71ed626b3a342eae9106ab4954056bd26de8fe18579b"

      def install
        bin.install "drop"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lucasepe/drop/releases/download/v0.2.0/drop-macos-x86_64.zip"
      sha256 "80790fb3afc066cd8ee508203eeead881c1973f6d3cd1761567f521f3756666b"

      def install
        bin.install "drop"
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
