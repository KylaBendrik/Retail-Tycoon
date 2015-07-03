require_relative 'batches'

$inventory = []

4.times do |n|
  $inventory << Batch.new(Style.new())
end

def print_inv()
  $inventory.each do |batch|
    batch.print_batch_info
  end
end
