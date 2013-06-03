require 'sinatra'
require 'json'

get '/' do
  content_type :json
  hash = { "name" => "eric dykstra",
    "email" => "eric@ericdykstra.me",
    "phone" => "+18553957872",
    "github" => "http://github.com/ericdykstra",
    "twitter" => "@eric_dykstra",
    "linkedin" => "http://linkedin.com/in/ericjdykstra" }
  hash.to_json
end