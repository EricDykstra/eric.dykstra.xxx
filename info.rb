require 'sinatra'
require 'json'

hash = { "name" => "eric dykstra",
  "email" => "eric@ericdykstra.me",
  "phone" => "+18553957872",
  "github" => "http://github.com/ericdykstra",
  "portfolio" => "http://ericdykstra.me",
  "twitter" => "@eric_dykstra",
  "linkedin" => "http://linkedin.com/in/ericjdykstra" }

get '/' do
  content_type :json
  hash.to_json
end

get '/:id' do
  hash[params[:id]]
end