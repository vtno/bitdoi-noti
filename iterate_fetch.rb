loop do
  `IFTTT_KEY=#{ENV['IFTTT_KEY']} ruby fetch_bx_data.rb`
  `IFTTT_KEY=#{ENV['IFTTT_KEY']} ruby fetch_finex_data.rb`
  sleep ENV['SLEEP'].to_i
end
