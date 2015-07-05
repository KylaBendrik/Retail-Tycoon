require_relative 'batches'

class Inventory
  attr_reader :batches
  def initialize
    @batches = []
    4.times { @batches << Batch.new(Style.new()) }
  end
  
  def print
    @batches.each do |batch|
      batch.print_batch_info
    end
  end
end
