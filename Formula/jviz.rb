class Jviz < Formula
  desc "Generates GraphViz DOT script to render JSON data graphically"
  homepage "https://cli-tools.dev/posts/jviz/"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lucasepe/cli-tools/releases/download/v0.2.2/jviz-macos-arm64.zip"
      sha256 "b3a1330b6a6fea45cc42fa813236d7b31c520ea8f181654ec00f44bf13f906ca"

      def install
        bin.install "jviz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lucasepe/cli-tools/releases/download/v0.2.2/jviz-macos-x86_64.zip"
      sha256 "7936ad363bb3e60e713384cc0dffd95bc33ae2e7737eb94cc4ffbf3299554246"

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
