require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/rectangle')

get('/') do
  @description = "this application will determine whether a rectangle is a square or not."
  erb(:input)
end

get('/output')do
  @length = params["length"]
  @width = params["width"]
  @rectangle = Rectangle.new(@length, @width).square
  erb(:output)
end
