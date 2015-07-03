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
  puts "What do you want to do? (For list of commands, type 'help')"
  command = gets.chomp

  if command[0] == 'h'
    puts "'help' lists avaliable commands"
    puts "'inventory' lists everything in your store inventory"
    puts "'update' lets you update inventory prices"
  elsif command[0] == 'i'
    puts $inventory.map(&:sales_tag)
  elsif command[0] == 'u'
    $inventory.each_with_index do |style, index|
      puts "#{index}: #{style.sales_tag}"
    end

    begin
      continue = false
      puts "Type the index number of the item for which your wish to update the pricing."
      style_id = gets.to_i

      puts "What price do you want the #{$inventory[style_id].to_s} to be?"
      $inventory[style_id].price = gets.chomp

      puts "The #{$inventory[style_id].to_s} is now priced at #{$inventory[style_id].price}."
      puts "Would you like to update another price? (Yn)"
      command = gets
      if command.chomp.upcase == 'Y' or command == "\n"
        continue = true
      end
    end while continue
  end
end
