class URL
  class Fragment
    attr_reader :fragment

    def initialize(fragment)
      @fragment = fragment
    end

    def ==(other)
      other.is_a?(self.class) &&
        fragment == other.fragment
    end
  end
end
