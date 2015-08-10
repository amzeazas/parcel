require('sinatra')
require('sinatra/reloader')
require('./lib/parcel')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/cost') do
  @length = params.fetch('length').to_i
  @width = params.fetch('width').to_i
  @depth = params.fetch('depth').to_i
  @weight = params.fetch('weight').to_i
  @speed = params.fetch('speed').to_i
  @distance = params.fetch('distance').to_i
  @cost = Parcel.new(@length, @width, @depth, @weight).cost_to_ship(@speed, @distance)
  erb(:cost)
end
