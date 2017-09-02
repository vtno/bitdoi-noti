# frozen_string_literal: true

require 'net/http'
require 'json'

IFTTT_KEY = ENV['IFTTT_KEY']

res_omg = Net::HTTP.get_response URI('https://api.bitfinex.com/v1/pubticker/omgusd')
res_xrp = Net::HTTP.get_response URI('https://api.bitfinex.com/v1/pubticker/xrpusd')
omg = JSON.parse res_omg.body
xrp = JSON.parse res_xrp.body

puts "omg = #{omg['last_price']}"
puts "xrp = #{xrp['last_price']}"

value1 = <<-TEXT
  OMG:$#{omg["last_price"]} XRP: $#{xrp["last_price"]}
  From bitfinex
TEXT

target_uri = URI("https://maker.ifttt.com/trigger/bitfinnex/with/key/#{IFTTT_KEY}")
req = Net::HTTP.post_form(target_uri, value1: value1)

puts value1
puts req.body
