require 'json'
require 'time'
require 'openexchangerates'

currency = OpenExchange.new('586ee899f7eb4f79861589a1f00a8630')
cur = JSON.parse(currency.get_latest)

cur_show = 'RUB'

puts "Latest update: #{Time.at(cur['timestamp'])}"
puts "1 USD = #{cur['rates'][cur_show]} \
(#{JSON.parse(currency.get_currencies)[cur_show]})"
