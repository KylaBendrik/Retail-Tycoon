require_relative 'lib/inventory'

prices = $inventory.map(&:price)
if prices.include? "$0"
  puts "You have unpriced items!"

  $inventory.select { |style| style.price == "$0" }.each do |style|
    puts "What price do you want for #{style}"
    style.price = gets.chomp
  end
end

loop do
  puts "What do you want to do? (For list of commands, type 'h')"
  command = gets.chomp

  if command == 'h'
    puts "no commands available (except, of course, 'h')"
  end
end
