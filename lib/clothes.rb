class Article
  attr_reader :type, :fabric_type, :color, :price
  
  def initialize(new_type, new_fabric_type, new_color)
    @type = new_type
    @fabric_type = new_fabric_type
    @color = new_color
    @base_price = 0
  end
  
  def price
    "$#{@base_price}"
  end
  
  def to_s
    "#{@color} #{@type} for #{price}"
  end
end
