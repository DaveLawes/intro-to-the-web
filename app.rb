require 'sinatra'

get '/' do
  "It works!"
end

get '/secret' do
  "Shhhh this is a secret!"
end

get '/shotgun' do
  "This should work...hopefully!"
end

get '/newer' do
  "Please work"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-cat' do
  p params[:name]
  @name = params[:name]
  erb(:index)
end

get '/named-cat' do
  p params[:name]
  @name = params[:name]
  erb(:form)
end
