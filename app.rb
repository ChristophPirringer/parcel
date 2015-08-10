require('sinatra')
require('pry')
require('sinatra/reloader')
require('./lib/parcels')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @height = params.fetch("height").to_f()
  @width = params.fetch("width").to_f()
  @length = params.fetch("length").to_f()
  @weight = params.fetch("weight").to_f()
  @distance = params.fetch("distance").to_f()
  @delivery_mode = params.fetch("delivery_mode")
  @gift_mode = params.fetch("gift_mode")
  test_parcel = Parcel.new(@height, @width, @length, @weight, @distance, @delivery_mode, @gift_mode )
  @shipping_cost= test_parcel.cost_to_ship()
  @volume=test_parcel.volume()
  @cost=test_parcel.cost_to_ship()
  erb(:result)
end
