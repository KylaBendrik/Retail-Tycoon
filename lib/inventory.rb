require_relative 'clothes'

$inventory = []

colors = [:red, :blue, :green, :white, :floral, :black, :zaney]
types = [:shirt, :blouse, :skirt, :shorts, :pants, :dress, :jumpsuit, :sweater]
fabric_types = [:cotton, :silk, :spandex, :rayon, :polyester, :velvet]
prices = [1, 2, 3, 4, 15]

4.times do |n|
  $inventory << Article.new(types.sample, fabric_types.sample, colors.sample, prices.sample)
end
