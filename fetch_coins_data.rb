# frozen_string_literal: true

require 'whenever'
require 'net/http'
require 'json'
require 'dotenv/load'

def fetch_coins_data
  uri = URI('https://bx.in.th/api/')
  res = Net::HTTP.get_response uri
  data = JSON.parse res.body
  btc = data['1']
  eth = data['21']
  xrp = data['25']
  omg = data['26']

  value1 = <<-TEXT
  From https://bx.in.th/
  BTC: ฿#{btc['last_price']}
  ETH: ฿#{eth['last_price']}
  XRP: ฿#{xrp['last_price']} (FOR PUSSY @min)
  OMG: ฿#{omg['last_price']}
  TEXT

  req_objs = {
    value1: value1
  }
  target_uri = URI("https://maker.ifttt.com/trigger/CRYPTO_SHIT/with/key/#{ENV["SECRET_KEY"]}")
  req = Net::HTTP.post_form(target_uri, req_objs)
  puts req.body
end

fetch_coins_data
