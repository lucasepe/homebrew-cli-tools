class Drop < Formula
  desc "Lightweight and secure HTTP server for hosting static files from a specified directory"
  homepage "https://cli-tools.dev/posts/drop/"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lucasepe/drop/releases/download/v0.4.0/drop-macos-arm64.zip"
      sha256 "a57ea3547685ea3a3d091e6811627cc2d97907f7454d93cf5b777135a48fb0b7"

      def install
        bin.install "drop"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lucasepe/drop/releases/download/v0.4.0/drop-macos-x86_64.zip"
      sha256 "554d335ce9f221168dd939d363740c486009eb2965731906132f94b0f9a31106"

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
