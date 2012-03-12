require 'sinatra'

get '/bang' do
  sleep 0.1
  "zing"
end

p "Generating bigass string..."
$string = 'heyo'
500.times {
  1024.times { $string << 'a' } # 1 kilobyte
  $string << "\n"
}

get '/boom' do
  $string
end