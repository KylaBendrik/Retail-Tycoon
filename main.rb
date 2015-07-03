require_relative 'lib/inventory'

puts "Welcome, entrepreneur! Below is a list of your starting inventory:"
print_inv

loop do
  puts "What do you want to do? (For list of commands, type 'help')"
  command = gets.chomp

  if command[0] == 'h'
    puts "'help' lists avaliable commands"
    puts "'inventory' lists everything in your store inventory"
    puts "'update' lets you update inventory prices"
  elsif command[0] == 'i'
    print_inv
  elsif command[0] == 'u'
    $inventory.each_with_index do |batch, index|
      puts "#{index}: #{batch.style.sales_tag}"
    end

    begin
      continue = false
      puts "Type the index number of the item for which you wish to update the pricing."
      style_id = gets.to_i

      puts "What price do you want the #{$inventory[style_id].style.to_s} to be?"
      $inventory[style_id].style.price = gets.chomp

      puts "The #{$inventory[style_id].style.to_s} is now priced at #{$inventory[style_id].style.price}."
      puts "Would you like to update another price? (Yn)"
      command = gets
      if command.chomp.upcase == 'Y' or command == "\n"
        continue = true
      end
    end while continue
  end
end
