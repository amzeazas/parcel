require('sinatra')
require('sinatra/reloader')
require('./lib/parcel')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/cost') do
  @cost = Parcel.new(@length, @width, @depth, @weight).cost_to_ship(@speed, @distance)
  erb(:cost)
end
