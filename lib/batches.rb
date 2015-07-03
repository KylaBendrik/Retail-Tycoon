require_relative 'styles'

class Batch
  attr_reader :style, :size, :quantity

  def initialize(new_style)
    @style = new_style
    @quantities = {"S" => 2, "M" => 4, "L" => 3}
  end

  def print_batch_info
    puts @style.sales_tag
    print "    "
    @quantities.each do |size, amount|
      print "#{size}:#{amount} "
    end
    print "\n"
  end
end
