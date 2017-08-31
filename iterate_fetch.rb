loop do
  `IFTTT_KEY=#{ENV['IFTTT_KEY']} ruby fetch_coins_data.rb`
  sleep 300
end
