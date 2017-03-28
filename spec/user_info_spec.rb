require "spec_helper"

require "url/user_info"

class URL
  RSpec.describe UserInfo do
    let(:user_info) { UserInfo.new("user", "pass") }

    it "has a username" do
      expect(user_info.username).to eq("user")
    end

    it "has a password" do
      expect(user_info.password).to eq("pass")
    end

    it "is equal to other instance with the same username and password" do
      other = UserInfo.new("user", "pass")
      expect(user_info).to eq(other)
    end

    it "is not equal to ther instance with differing username or password" do
      other = UserInfo.new("user1", "pass1")
      expect(user_info).to_not eq(other)
    end
  end
end
