require_relative 'styles'

class Batch
  attr_reader :style, :size, :quantity

  def initialize(new_style)
    @style = new_style
    @quantities = {"S" => 2, "M" => 4, "L" => 3}
  end

  def print_batch_info
    output = @style.sales_tag
    output += "\n    "
    @quantities.each do |size, amount|
      output += "#{size}:#{amount} "
    end
    output += "\n"
    output
  end
end
