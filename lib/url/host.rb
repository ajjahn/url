# require "url/tlds"

class URL
  class Host
    attr_reader :host

    TLDS = %w(com uk co us)

    def initialize(host)
      @host = host
    end

    def tld
      segments = host.split(".").reverse.each_with_object([]) do |segment, segments|
        if TLDS.include?(segment)
          segments << segment
        else
          break segments
        end
      end
      segments.reverse

      host.split(".").last
    end

    def ==(other)
      other.is_a?(self.class) &&
        host == other.host
    end
  end
end
