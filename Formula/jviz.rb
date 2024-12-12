class Jviz < Formula
  desc "Generates GraphViz DOT script to render JSON data graphically"
  homepage "https://cli-tools.dev/posts/jviz/"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lucasepe/cli-tools/releases/download/v0.2.0/jviz-macos-arm64.zip"
      sha256 "3155e7f7fd60c34aec230d3d5f22b4f0576ee2d29685fcb44ec8329529e7032f"

      def install
        bin.install "jviz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lucasepe/cli-tools/releases/download/v0.2.0/jviz-macos-x86_64.zip"
      sha256 "5b3a2b43a8dfa69c073098d564f455e4df75988ddd221271d064470d80e7b701"

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
