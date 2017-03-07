require 'pe-dhcpd/options'

module PeDHCPd

  RSpec.describe ServerNameOption, "build" do
    it "builds from string value" do
      option = ServerNameOption.new

      option.build("tftpserver.example.com")

      expect(option.key).to eq 66
      expect(option.len).to eq 22
      expect(option.value).to eq "tftpserver.example.com"
    end
  end

  RSpec.describe BootfileNameOption, "build" do
    it "builds from string value" do
      option = BootfileNameOption.new

      option.build("bootfile")

      expect(option.key).to eq 67
      expect(option.len).to eq 8
      expect(option.value).to eq "bootfile"
    end
  end

  RSpec.describe TFTPServerAddress, "build" do
    it "builds from string value" do
      option = TFTPServerAddress.new

      option.build("192.168.0.1")

      expect(option.key).to eq 150
      expect(option.len).to eq 4
      expect(option.value).to eq "\xC0\xA8\x00\x01".b
    end

    it "builds from array value" do
      option = TFTPServerAddress.new

      option.build([192, 168, 0, 1])

      expect(option.key).to eq 150
      expect(option.len).to eq 4
      expect(option.value).to eq "\xC0\xA8\x00\x01".b
    end

  end

end
