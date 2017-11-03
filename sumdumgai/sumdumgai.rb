require 'sinatra'
require 'net/http'
require 'uri'

set :bind, '0.0.0.0'

def lucky_number
  uri = URI('http://hilo:4567/increment')

  http = Net::HTTP.new(uri.host, uri.port)
  req = Net::HTTP::Post.new(uri)
  response = http.request(req)
  response.body
end

get '/' do
  "Your lucky number is #{lucky_number}"
end
