require 'open-uri'

class OpenExchange
  @@url = 'http://openexchangerates.org/api/'

  def initialize(api_key)
    @api_key = api_key
    @user_agent = "Ruby/#{RUBY_VERSION}"
  end

  def set_userAgent(user_agent)
    @user_agent = user_agent
  end

  def get_latest()
    json = open("#{@@url}latest.json?app_id=#{@api_key}",
      'User-Agent' => @user_agent).read
    return json
  end

  def get_old(date) # YYYY-MM-DD
    json = open("#{@@url}historical/#{date}.json?app_id=#{@api_key}",
      'User-Agent' => @user_agent).read
    return json
  end

  def get_currencies()
    json = open("#{@@url}currencies.json?app_id=#{@api_key}",
      'User-Agent' => @user_agent).read
    return json
  end
end
