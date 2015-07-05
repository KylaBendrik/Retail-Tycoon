class Style
  attr_reader :type, :fabric_type, :color, :style_number, :cost

  @@types = [:shirt, :blouse, :skirt, :shorts, :pants, :dress, :jumpsuit, :sweater, :jacket]
  @@fabric_types = [:cotton, :silk, :spandex, :rayon, :polyester, :velvet, :wool, :lace,
    :brocade, :chiffon, :corduroy, :denim, :eyelet, :linen, :jersey, :leather, :organdy,
    :suede, :taffeta]
  @@colors = [:wine, :red, :orange, :peach, :pink, :puce, :rose, :ruby, :salmon,
     :yellow, :green, :fern, :olive, :pistachio, :jade, :aqua, :mint, :blue, :indigo,
     :violet, :wine, :white, :grey, :black, :brown, :khaki, :tan, :ecru, :cream, :shell,
     :zaney]
  @@prices = [1, 2, 3, 4, 15]

  def initialize(type, fabric_type, color, base_price)
    @type=type
    @fabric_type=fabric_type
    @color=color
    @style_number = "#{type}#{fabric_type.to_s.rjust(2,"0")}#{color.to_s.rjust(2,"0")}"
    @cost = 5
    @base_price = base_price
  end

  def self.create_random()
    g = Random.new

    type = g.rand @@types.length
    fabric_type = g.rand @@fabric_types.length
    color = g.rand @@colors.length

    base_price = @@prices.sample

    new(type, fabric_type, color, base_price)
  end

  def price
    "$#{@base_price}"
  end

  def cost
    "$#{@cost}"
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

  def inspect_style
    "\nStyle Number: #{style_number}\n" +
    "Style: #{@@types[@type]}\n" +
    "Color: #{@@colors[@color]}\n" +
    "Fabric: #{@@fabric_types[@fabric_type]}\n"+
    "\n" +
    "Price: #{price}   Cost to make: #{cost}"
  end

  def self.types
    @@types
  end

  def self.fabric_types
    @@fabric_types
  end

  def self.colors
    @@colors
  end
end
