require 'json'
require 'time'
require 'openexchangerates'

currency = OpenExchange.new('586ee899f7eb4f79861589a1f00a8630')
cur = JSON.parse(currency.get_latest)
cur_old = JSON.parse(currency.get_old('2010-12-31'))

cur_show = 'RUB'

puts "#{Time.at(cur_old['timestamp'])} \n\t1 USD = #{cur['rates'][cur_show]} \
#{JSON.parse(currency.get_currencies)[cur_show]}"
puts "#{Time.at(cur['timestamp'])} \n\t1 USD = #{cur_old['rates'][cur_show]} \
#{JSON.parse(currency.get_currencies)[cur_show]}"
