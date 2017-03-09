require 'log4r'
require 'log4r/outputter/syslogoutputter'

module PeDHCPd
  class Vars
    @log = Log4r::Logger.new 'dhcpd'

    class << self
      def log=(log)
        @log = log
      end

      def log
        @log
      end
    end
  end
end
