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
# :parameters, :values, :embeded_datatypes

describe URL do
  it "has a version number" do
    expect(URL::VERSION).not_to be nil
  end
end
