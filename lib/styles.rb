class Style
  attr_reader :type, :fabric_type, :color

  @@types = [:shirt, :blouse, :skirt, :shorts, :pants, :dress, :jumpsuit, :sweater]
  @@fabric_types = [:cotton, :silk, :spandex, :rayon, :polyester, :velvet]
  @@colors = [:red, :blue, :green, :white, :floral, :black, :zaney]
  @@prices = [1, 2, 3, 4, 15]

  def initialize()
    @type = @@types.sample
    @fabric_type = @@fabric_types.sample
    @color = @@colors.sample
    @base_price = @@prices.sample
  end

  def price
    "$#{@base_price}"
  end

  def price=(new_price)
    @base_price = new_price
  end

  def to_s
    "#{@color} #{@type}"
  end

  def sales_tag
    "#{@color} #{@type} for #{price}"
  end
end
