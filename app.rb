require 'sinatra'
require 'json'

get %r{/([\d]{3})} do
  code = params[:captures].first.to_i
  status code
  content_type :json
  {status: code}.to_json
end
