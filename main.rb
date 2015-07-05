require_relative 'lib/inventory'

puts ""
puts "Welcome, entrepreneur! Below is a list of your starting inventory:"
puts ""
print_inv

loop do
  puts ""
  puts "What do you want to do? (For list of commands, type '(h)elp')"
  command = gets.chomp
  puts ""

  if command[0] == 'h'
    puts "'(h)elp' lists avaliable commands"
    puts "'(i)nventory' lists everything in your store inventory"
    puts "'(u)pdate' lets you update inventory prices"
    puts "'(d)etails' allows you to see more details about a specific style"
  elsif command[0] == 'i'
    print_inv
  elsif command[0] == 'u'
    $inventory.each_with_index do |batch, index|
      puts "#{batch.style.sales_tag}"
    end

    begin
      continue = false
      puts ""
      puts "Type the style number of the item for which you wish to update the pricing."
      style_num = gets.chomp
      style_id = 0


        $inventory.each_with_index do |batch, index|
          if batch.style.style_number == style_num
            style_id = index
            break
          end
        end

      puts ""
      puts "What price do you want the #{$inventory[style_id].style.to_s} to be?"
      $inventory[style_id].style.price = gets.chomp

      puts ""
      puts "The #{$inventory[style_id].style.to_s} is now priced at #{$inventory[style_id].style.price}."
      puts ""
      puts "Would you like to update another price? (Yn) (type 'list' to print inventory list)"
      command = gets
      if command.chomp.upcase == 'Y' or command == "\n"
        continue = true
      elsif command.chomp[0] == 'l'
        puts ""
        $inventory.each_with_index do |batch, index|
          puts "#{batch.style.sales_tag}"
        end
        continue = true
      end
    end while continue
  elsif command[0] == 'd'
    puts "Enter the style number of the item you wish to inspect"
    style_num = gets.chomp
    style_id = 0

    $inventory.each_with_index do |batch, index|
      if batch.style.style_number == style_num
        style_id = index
        break
      end
    end

    puts "#{$inventory[style_id].style.inspect}"

  end
end
