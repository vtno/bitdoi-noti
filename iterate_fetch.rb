loop do
  `ruby fetch_bx_data.rb`
  sleep ENV['SLEEP'].to_i
end
