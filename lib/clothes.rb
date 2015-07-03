class Article
  attr_reader :type, :fabric_type, :color

  def initialize(new_type, new_fabric_type, new_color, new_price)
    @type = new_type
    @fabric_type = new_fabric_type
    @color = new_color
    @base_price = new_price
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
