require 'sinatra'

INCREMENT = 1024
id = 0

set :bind, '0.0.0.0'

get '/' do
  "Yep, server's running"
end

post '/increment' do
  id.tap{ id += 1024 }.to_s
end
