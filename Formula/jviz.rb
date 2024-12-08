class Txtimg < Formula
  desc "Generates GraphViz DOT script to render JSON data graphically"
  homepage "https://cli-tools.dev/posts/jviz/"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lucasepe/cli-tools/releases/download/v0.2.0/jviz-macos-arm64.zip"
      sha256 "1e5d71402bf52006b303be10dc5d6f09d16449875f72ae64568205ce215e6e4f"

      def install
        bin.install "jviz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lucasepe/cli-tools/releases/download/v0.2.0/jviz-macos-x86_64.zip"
      sha256 "db6b4cf0a993c62cb2a80684175cb387fdcc3017a59d372a0c7aff822fc11ee2"

      def install
        bin.install "jviz"
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
