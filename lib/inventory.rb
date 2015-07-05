require_relative 'batches'

class Inventory
  attr_reader :batches
  def initialize
    @batches = []
    4.times { @batches << Batch.new(Style.create_random()) }
  end

  def list
    @batches.map { |batch| batch.style.sales_tag }.join "\n"
  end

  def print
    @batches.each do |batch|
      batch.print_batch_info
    end
  end

  def lookup(style_number)
    @batches.find { |batch| batch.style.style_number == style_number }
  end

  def add_style(type, fabric_type, color, base_price)
    @batches << Batch.new(Style.new(type.to_sym, fabric_type.to_sym, color.to_sym, base_price))
  end
end
