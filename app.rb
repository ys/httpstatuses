require 'sinatra'
require 'json'

get %r{/([\d]{3})} do
  do_the_code
end

post %r{/([\d]{3})} do
  do_the_code
end

patch %r{/([\d]{3})} do
  do_the_code
end

put %r{/([\d]{3})} do
  do_the_code
end

delete %r{/([\d]{3})} do
  do_the_code
end

def do_the_code
  code = params[:captures].first.to_i
  status code
  content_type :json
  {status: code}.to_json
end
