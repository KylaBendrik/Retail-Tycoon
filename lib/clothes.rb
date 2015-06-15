class Article
  attr_reader :type, :fabric_type, :color
  
  def initialize(new_type, new_fabric_type, new_color)
    @type = new_type
    @fabric_type = new_fabric_type
    @color = new_color
  end
  
  def to_s
    "#{@color} #{@type}"
  end
end

puts Article.new(:blouse, :cotton, :blue)
