
class Msgdrop < Formula
    desc "Delivery WhatsApp text messages, images or documents to a list of contacts in a CSV file."
    homepage "https://cli-tools.dev/posts/msgdrop/"
    version "1.0.0"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://dl.cli-tools.dev/msgdrop/msgdrop-macos-arm64.zip"
        sha256 "d5e3060250549b0af92358bd04473f95935ae7cd0859489b53e945d7ddc7fe5d"
  
        def install
          bin.install "msgdrop"
        end
      end
      if Hardware::CPU.intel?
        url "https://dl.cli-tools.dev/msgdrop/msgdrop-macos-x86_64.zip"
        sha256 "850becc64e0c9cb99f5fdb4c1eefc22681008ff71a77ca0a6775d269a4bd2129"
  
        def install
          bin.install "msgdrop"
        end
      end
    end

    def caveats
      <<~EOS
        If you find this tool helpful and want to upgrade to the full
        unrestricted 'real-deal' experience, consider supporting with a donation.

        Every bit helps cover development time and fuels future improvements.

        Your support truly makes a difference—thank you!

          * https://www.paypal.com/donate?hosted_button_id=WSXXQ36U37FMJ
      EOS
    end

  end