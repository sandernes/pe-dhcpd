require 'pe-dhcpd/bootpacket'

module PeDHCPd

  RSpec.describe BootPacket do
    it "can be constructed with no data" do
      packet = BootPacket.new
    end
  end
  
end
