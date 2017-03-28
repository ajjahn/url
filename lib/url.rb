require "url/version"
require "url/user_info"
require "url/fragment"
require "url/host"
require "uri"

class URL
  def initialize(string_url)
    @uri = URI(string_url)
  end

  def user_info
    UserInfo.new(@uri.user, @uri.password)
  end

  def fragment
    Fragment.new(@uri.fragment)
  end

  def host
    Host.new(@uri.host)
  end
end
