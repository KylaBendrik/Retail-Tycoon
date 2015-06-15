require_relative 'lib/inventory'

prices = $inventory.map(&:price)
if prices.include? "$0"
  puts "You have unpriced items!"
  
  $inventory.select { |style| style.price == "$0" }.each do |style|
    puts "What price do you want for #{style}"
    style.price = gets.chomp
  end
end

puts "Display inventory? (Yn)"
command = gets

if command.chomp == 'Y' or command == "\n"
  puts $inventory.map(&:sales_tag)
end
