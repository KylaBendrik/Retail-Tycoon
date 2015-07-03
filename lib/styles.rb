class Style
  attr_reader :type, :fabric_type, :color, :style_number

  @@types = [:shirt, :blouse, :skirt, :shorts, :pants, :dress, :jumpsuit, :sweater]
  @@fabric_types = [:cotton, :silk, :spandex, :rayon, :polyester, :velvet]
  @@colors = [:red, :blue, :green, :white, :floral, :black, :zaney]
  @@prices = [1, 2, 3, 4, 15]

  def initialize()
    g = Random.new
    
    @type = g.rand @@types.length
    @fabric_type = g.rand @@fabric_types.length
    @color = g.rand @@colors.length
    
    @style_number = "#{@type}#{@fabric_type}#{@color}"
    
    @base_price = @@prices.sample
  end

  def price
    "$#{@base_price}"
  end

  def price=(new_price)
    @base_price = new_price
  end

  def to_s
    "#{@@colors[@color]} #{@@types[@type]}"
  end

  def sales_tag
    "#{style_number}: #{@@colors[@color]} #{@@types[@type]} for #{price}"
  end
end
