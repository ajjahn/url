require "spec_helper"

# URL Parts:
# :scheme, :userinfo, :host, :port, :path, :query, :fragment
#
# User Info:
# :username, :password
#
# Host Parts:
# :tld, :domain, subdomains: [:hostnames]
#
# Path Parts:
# :node, :delimiter
#
# Query Parts:
# :parameters, :values, :embedded_datatypes

describe URL do
  it "has a version number" do
    expect(URL::VERSION).not_to be nil
  end

  describe "user_info" do
    it "returns a user_info object" do
      url = URL.new("http://user1:pass@www.google.com")
      expect(url.user_info).to eq(URL::UserInfo.new("user1", "pass"))
    end
  end

  describe "fragment" do
    it "returns a fragment object" do
      url = URL.new("http://user1:pass@www.google.com/path?query#fragment")
      expect(url.fragment).to eq(URL::Fragment.new("fragment"))
    end
  end

  describe "host" do
    it "returns a host object" do
      url = URL.new("http://user1:pass@www.google.com/path?query#fragment")
      expect(url.host).to eq(URL::Host.new("www.google.com"))
    end
  end
end
