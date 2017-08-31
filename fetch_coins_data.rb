# frozen_string_literal: true

require 'net/http'
require 'json'

res = Net::HTTP.get_response URI('https://bx.in.th/api/')
data = JSON.parse res.body
btc = data['1']
eth = data['21']
xrp = data['25']
omg = data['26']

value1 = <<-TEXT
  From https://bx.in.th/
  BTC: ฿#{btc['last_price']}
  ETH: ฿#{eth['last_price']}
  XRP: ฿#{xrp['last_price']}
  OMG: ฿#{omg['last_price']}
TEXT

target_uri = URI("https://maker.ifttt.com/trigger/CRYPTO_SHIT/with/key/#{ENV['IFTTT_KEY']}")
req = Net::HTTP.post_form(target_uri, value1: value1)
puts req.body
