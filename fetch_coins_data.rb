# frozen_string_literal: true

require 'net/http'
require 'json'

IFTTT_KEY = ENV['IFTTT_KEY']

res = Net::HTTP.get_response URI('https://bx.in.th/api/')
data = JSON.parse res.body
btc = data['1']
eth = data['21']
xrp = data['25']
omg = data['26']

value1 = <<-TEXT
  OMG: ฿#{omg['last_price']}
  ETH: ฿#{eth['last_price']}
  XRP: ฿#{xrp['last_price']}
  BTC: ฿#{btc['last_price']}
  From https://bx.in.th/
TEXT

target_uri = URI("https://maker.ifttt.com/trigger/CRYPTO_NOTI/with/key/#{IFTTT_KEY}")
req = Net::HTTP.post_form(target_uri, value1: value1)
puts req.body
