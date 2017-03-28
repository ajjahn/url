class URL
  class UserInfo
    attr_reader :username, :password

    def initialize(user, pass)
      @username = user
      @password = pass
    end

    def ==(other)
      other.is_a?(self.class) &&
        other.username == username &&
        other.password == password
    end
  end
end
