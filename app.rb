require 'sinatra'
require 'sinatra/activerecord'

Dir["./models/*.rb"].each { |file| require file }

get '/' do
  @stats = State.find_by_slug("florida").stats.last
  puts @stats.inspect
  erb :home
end